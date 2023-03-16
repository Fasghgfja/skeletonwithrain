package at.qe.skeleton.configs;

import javax.sql.DataSource;

import at.qe.skeleton.model.UserRole;
import org.springframework.beans.factory.BeanCreationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;
import static org.springframework.security.web.util.matcher.AntPathRequestMatcher.antMatcher;

import at.qe.skeleton.spring.CustomizedLogoutSuccessHandler;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

/**
 * Spring configuration for web security.
 *
 * This class is part of the skeleton project provided for students of the
 * course "Software Engineering" offered by the University of Innsbruck.
 */
@Configuration
@EnableWebSecurity()
public class WebSecurityConfig {

    private static final String ADMIN = UserRole.ADMIN.name();
    private static final String GARDENER = UserRole.GARDENER.name();
    private static final String USER = UserRole.USER.name();

    @Autowired
    DataSource dataSource;

    @Bean
    protected LogoutSuccessHandler logoutSuccessHandler() {
    	return new CustomizedLogoutSuccessHandler();
    }

    

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        try {
            http.csrf().disable();
            http.headers().frameOptions().disable(); // needed for H2 console

            http
                .authorizeHttpRequests(authorize -> authorize
                .requestMatchers("/").permitAll()
                .requestMatchers("/**.jsf").permitAll()
                .requestMatchers(antMatcher("/h2-console/**")).permitAll()
                .requestMatchers("/jakarta.faces.resource/**").permitAll()
                .requestMatchers("/error/**").permitAll()
                .requestMatchers("/admin/**").hasAnyAuthority(ADMIN)
                .requestMatchers("/secured/**").hasAnyAuthority(ADMIN, GARDENER, USER)
                .requestMatchers("/omnifaces.push/**").hasAnyAuthority(ADMIN, GARDENER, USER)
                    .anyRequest().authenticated())
                    .formLogin()
                    .loginPage("/login.xhtml")
                    .permitAll()
                    .failureUrl("/error/access_denied.xhtml")
                    .defaultSuccessUrl("/secured/welcome.xhtml")
                .loginProcessingUrl("/login")
                .successForwardUrl("/secured/welcome.xhtml")
                    .and()
                    .logout()
                    .logoutSuccessUrl("/login.xhtml")
                    .deleteCookies("JSESSIONID");
            
            http.exceptionHandling().accessDeniedPage("/error/access_denied.xhtml");
            // http.sessionManagement().invalidSessionUrl("/error/invalid_session.xhtml");
			return http.build();
            }
            catch (Exception ex) {
                    throw new BeanCreationException("Wrong spring security configuration", ex);
            }
                
        // :TODO: user failureUrl(/login.xhtml?error) and make sure that a corresponding message is displayed

    }

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        //Configure roles and passwords via datasource
        auth.jdbcAuthentication().dataSource(dataSource)
                .usersByUsernameQuery("select username, password, enabled from userx where username=?")
                .authoritiesByUsernameQuery("select userx_username, roles from userx_user_role where userx_username=?");
    }

    @Bean
    public static PasswordEncoder passwordEncoder() {
        // :TODO: use proper passwordEncoder and do not store passwords in plain text
        return NoOpPasswordEncoder.getInstance();
    }


}