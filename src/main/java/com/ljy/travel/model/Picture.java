package com.ljy.travel.model;

/**
 * @author: gary
 * @date: 2019/12/5 11:51
 */
public class Picture {
    private String id;
    private String url;
    private Commodity commodity;

    @Override
    public String toString() {
        return "Picture{" +
                "id='" + id + '\'' +
                ", url='" + url + '\'' +
                ", commodity=" + commodity +
                '}';
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Commodity getCommodity() {
        return commodity;
    }

    public void setCommodity(Commodity commodity) {
        this.commodity = commodity;
    }
}
