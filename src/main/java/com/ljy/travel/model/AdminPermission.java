package com.ljy.travel.model;

import java.util.List;

/**
 * @author: gary
 * @date: 2019/11/28 20:37
 */
public class AdminPermission {
    private String id;
    private String permissionName;
    private String url;
    private List<AdminRole> roles;

    @Override
    public String toString() {
        return "AdminPermission{" +
                "id='" + id + '\'' +
                ", permissionName='" + permissionName + '\'' +
                ", url='" + url + '\'' +
                ", roles=" + roles +
                '}';
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPermissionName() {
        return permissionName;
    }

    public void setPermissionName(String permissionName) {
        this.permissionName = permissionName;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public List<AdminRole> getRoles() {
        return roles;
    }

    public void setRoles(List<AdminRole> roles) {
        this.roles = roles;
    }
}
