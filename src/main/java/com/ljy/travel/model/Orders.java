package com.ljy.travel.model;

/**
 * @author: gary
 * @date: 2019/12/4 16:56
 */
public class Orders {
    private String id;
    private String cid;
    private String tid;
    private Traveller traveller;
    private Commodity commodity;
    private String createTime;
    private String status;
    private String totalPrices;

    @Override
    public String toString() {
        return "Orders{" +
                "id='" + id + '\'' +
                ", cid='" + cid + '\'' +
                ", tid='" + tid + '\'' +
                ", traveller=" + traveller +
                ", commodity=" + commodity +
                ", createTime='" + createTime + '\'' +
                ", status='" + status + '\'' +
                ", totalPrices='" + totalPrices + '\'' +
                '}';
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }

    public String getTid() {
        return tid;
    }

    public void setTid(String tid) {
        this.tid = tid;
    }

    public Traveller getTraveller() {
        return traveller;
    }

    public void setTraveller(Traveller traveller) {
        this.traveller = traveller;
    }

    public Commodity getCommodity() {
        return commodity;
    }

    public void setCommodity(Commodity commodity) {
        this.commodity = commodity;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getTotalPrices() {
        return totalPrices;
    }

    public void setTotalPrices(String totalPrices) {
        this.totalPrices = totalPrices;
    }
}
