package net.javaguides.login.bean;

import java.io.Serializable;

public class LoginBean implements Serializable {
    
    private static final long serialVersionUID = 1L;
    private String username;
    private String password;
    public String accNo;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    
    
    public String getaccNo() {
        return accNo;
    }

    public void setaccNo(String acc) {
        this.accNo = acc;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}