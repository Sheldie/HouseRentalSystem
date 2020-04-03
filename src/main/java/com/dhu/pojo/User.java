package com.dhu.pojo;

import java.util.Date;

public class User {
    private int id;
    private String username;
    private String password;
    private String userphone;
    private String userauthority;
    private String usergender;
    private String useridnumber;
    private String userarea;
    private Date userbirthday;
    private Date usercreatetime;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

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

    public String getUserphone() {
        return userphone;
    }

    public void setUserphone(String userphone) {
        this.userphone = userphone;
    }

    public String getUserauthority() {
        return userauthority;
    }

    public void setUserauthority(String userauthority) {
        this.userauthority = userauthority;
    }

    public String getUsergender() {
        return usergender;
    }

    public void setUsergender(String usergender) {
        this.usergender = usergender;
    }

    public String getUseridnumber() {
        return useridnumber;
    }

    public void setUseridnumber(String useridnumber) {
        this.useridnumber = useridnumber;
    }

    public String getUserarea() {
        return userarea;
    }

    public void setUserarea(String userarea) {
        this.userarea = userarea;
    }

    public Date getUserbirthday() {
        return userbirthday;
    }

    public void setUserbirthday(Date userbirthday) {
        this.userbirthday = userbirthday;
    }

    public Date getUsercreatetime() {
        return usercreatetime;
    }

    public void setUsercreatetime(Date usercreatetime) {
        this.usercreatetime = usercreatetime;
    }
}
