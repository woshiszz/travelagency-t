package com.ljy.travel.model;

import org.hibernate.annotations.Table;

import javax.persistence.Entity;

/**
 * @author: gary
 * @date: 2019/11/26 14:54
 */

public class FrontTitles {
    private int id;
    private String name;
    private String href;
    private String createDate;
    private String updateDate;
    private int sort;

    public FrontTitles() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getHref() {
        return href;
    }

    public void setHref(String href) {
        this.href = href;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public String getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(String updateDate) {
        this.updateDate = updateDate;
    }

    public int getSort() {
        return sort;
    }

    public void setSort(int sort) {
        this.sort = sort;
    }

    public FrontTitles(int id, String name, String href, String createDate, String updateDate, int sort) {
        this.id = id;
        this.name = name;
        this.href = href;
        this.createDate = createDate;
        this.updateDate = updateDate;
        this.sort = sort;
    }
}
