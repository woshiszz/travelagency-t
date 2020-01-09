package com.ljy.travel.model;

import java.util.List;

/**
 * @author: gary
 * @date: 2019/11/28 20:30
 */
public class AdminUser {
    private String id;
    private String username;
    private String password;
    private String phoneNum;
    private String status;
    private String name;
    private String sex;
    private AdminRole role;
    @Override
    public String toString() {
        return "AdminUser{" +
                "id='" + id + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", phoneNum='" + phoneNum + '\'' +
                ", status='" + status + '\'' +
                ", name='" + name + '\'' +
                ", sex='" + sex + '\'' +
                ", role=" + role +
                '}';
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
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

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public AdminRole getRole() {
        return role;
    }

    public void setRole(AdminRole role) {
        this.role = role;
    }




}
