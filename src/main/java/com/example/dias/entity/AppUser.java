package com.example.dias.entity;


import javax.persistence.*;

@Entity
@Table(name = "users")
public class AppUser {
    @Id
    @Column
    private String username;
    @Column
    private String password;
    @Column
    private boolean enabled;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }
}

