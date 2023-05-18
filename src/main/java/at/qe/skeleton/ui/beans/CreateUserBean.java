package at.qe.skeleton.ui.beans;


import at.qe.skeleton.model.Log;
import at.qe.skeleton.model.LogType;
import at.qe.skeleton.model.UserRole;
import at.qe.skeleton.model.Userx;
import at.qe.skeleton.repositories.LogRepository;
import at.qe.skeleton.repositories.UserxRepository;
import at.qe.skeleton.services.UserService;
import jakarta.faces.context.ExternalContext;
import jakarta.faces.context.FacesContext;
import jakarta.inject.Named;
import lombok.Getter;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;
import java.util.*;

@Getter
 @Setter
 @Component
 @Named
 @Scope("application")
public class CreateUserBean implements Serializable {

    @Autowired
    private transient UserService userService;
    @Autowired
    private transient PasswordEncoder passwordEncoder;

    @Autowired
    private transient UserxRepository userxRepository;

    @Autowired
    private transient LogRepository logRepository;

     @Autowired
     private SessionInfoBean sessionInfoBean;

    private String username;
    private String firstName;
    private String lastName;
    private String password;
    private String email;
    private String phone;
    private List<String> selectedRoles = new ArrayList<>();
    private Set<UserRole> roles = new HashSet<>();


    public void createNewUser() {
        Userx user = new Userx();
        roles = new HashSet<>();
        user.setUsername(username);
        user.setPassword(passwordEncoder.encode(password));
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setEmail(email);
        user.setEnabled(true);

        selectedRoles.forEach(x -> {
            if(x.equals("ADMIN")) {
                roles.add(UserRole.ADMIN);
                roles.add(UserRole.GARDENER);
            } else if(x.equals("GARDENER")) {
                roles.add(UserRole.GARDENER);
            }
        });
        roles.add(UserRole.USER);
        user.setRoles(roles);

        if (userxRepository.findFirstByUsername(user.getUsername()) != null){
            Log creationFailLog = new Log();
            creationFailLog.setDate(LocalDate.now());
            creationFailLog.setTime(LocalDateTime.now().truncatedTo(ChronoUnit.SECONDS));
            creationFailLog.setAuthor(sessionInfoBean.getCurrentUserName());
            creationFailLog.setSubject("USER CREATION FAILED");
            creationFailLog.setText("ENTERED USERNAME ALREADY TAKEN: " + user.getUsername());
            creationFailLog.setType(LogType.WARNING);
            logRepository.save(creationFailLog);
        }
        else {
            Log createLog = new Log();
            createLog.setDate(LocalDate.now());
            createLog.setTime(LocalDateTime.now().truncatedTo(ChronoUnit.SECONDS));
            createLog.setAuthor(sessionInfoBean.getCurrentUserName());
            createLog.setSubject("USER CREATION");
            createLog.setText("CREATED USER: " + user.getUsername());
            createLog.setType(LogType.SUCCESS);
            logRepository.save(createLog);
            userService.saveUser(user);
        }


    }


     public void registerNewUser() throws IOException {
         Userx user = new Userx();

         user.setUsername(username);
         user.setPassword(passwordEncoder.encode(password));
         user.setFirstName(firstName);
         user.setLastName(lastName);
         user.setEmail(email);
         user.setEnabled(true);

         selectedRoles.forEach(x -> {
             if(x.equals("ADMIN")) {
                 roles.add(UserRole.ADMIN);
                 roles.add(UserRole.GARDENER);

             } else if(x.equals("GARDENER")) {
                 roles.add(UserRole.GARDENER);
             }
         });
         roles.add(UserRole.USER);
         user.setRoles(roles);

        //TODO:FIx log creatin here
         if (userxRepository.findFirstByUsername(user.getUsername()) != null){
              Log creationFailLog = new Log();
              creationFailLog.setDate(LocalDate.now());
              creationFailLog.setTime(LocalDateTime.now().truncatedTo(ChronoUnit.SECONDS));
              creationFailLog.setAuthor(sessionInfoBean.getCurrentUserName());
              creationFailLog.setSubject("USER CREATION FAILED");
              creationFailLog.setText("ENTERED USERNAME ALREADY TAKEN: " + user.getUsername());
              creationFailLog.setType(LogType.WARNING);
              logRepository.save(creationFailLog);

             // redirect to login page
             FacesContext facesContext = FacesContext.getCurrentInstance();
             ExternalContext externalContext = facesContext.getExternalContext();
             externalContext.redirect(externalContext.getRequestContextPath() + "/login.xhtml");
         } else {
              Log createLog = new Log();
              createLog.setDate(LocalDate.now());
              createLog.setTime(LocalDateTime.now().truncatedTo(ChronoUnit.SECONDS));
              createLog.setAuthor(sessionInfoBean.getCurrentUserName());
              createLog.setSubject("USER CREATION");
              createLog.setText("CREATED USER: " + user.getUsername());
              createLog.setType(LogType.SUCCESS);
              logRepository.save(createLog);

             userService.saveUser(user);
             // redirect to login page
             FacesContext facesContext = FacesContext.getCurrentInstance();
             ExternalContext externalContext = facesContext.getExternalContext();
             externalContext.redirect(externalContext.getRequestContextPath() + "/login.xhtml");
         }

     }
}
