package at.qe.skeleton.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import org.springframework.data.domain.Persistable;

import java.io.Serializable;
@Entity
public class AccessPoint extends Metadata implements Persistable<Long>, Serializable, Comparable<AccessPoint>{

    @Id
    @GeneratedValue
    @Column(nullable = false, unique = true)
    private Long accessPointID;
    private String location;
    private boolean validated;

    public void setId(Long id) {
        this.accessPointID = id;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public boolean isValidated() {
        return validated;
    }

    public void setValidated(boolean validated) {
        this.validated = validated;
    }

    @Override
    public Long getId() {
        return this.accessPointID;
    }

    @Override
    public boolean isNew() {
        return (null == super.getCreateDate());
    }

    @Override
    public int compareTo(AccessPoint o) {
        return this.accessPointID.compareTo(o.getId());
    }
}