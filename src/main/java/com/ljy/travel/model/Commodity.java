package com.ljy.travel.model;


import com.ljy.travel.utils.DateUtils;
import com.ljy.travel.utils.InfoJudge;

import java.text.ParseException;
import java.util.Date;
import java.util.List;

/**
 * @author: gary
 * @date: 2019/12/4 17:02
 */
public class Commodity {
    private String id;
    private String name;
    private double price;
    private String intro;
    private double preferentialPrice;
    private String discount;
    private Date startBuy;
    private String startBuyStr;
    private Date overBuy;
    private String overBuyStr;
    private boolean canBuy;
    private String status;
    private String departureCity;
    private String arrivalCity;
    private String url;
    private Date createTime;
    private String createTimeStr;
    private List<Picture> pictures;
    private String statusStr;
    private String recommend;

    @Override
    public String toString() {
        return "Commodity{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", intro='" + intro + '\'' +
                ", preferentialPrice=" + preferentialPrice +
                ", discount='" + discount + '\'' +
                ", startBuy=" + startBuy +
                ", startBuyStr='" + startBuyStr + '\'' +
                ", overBuy=" + overBuy +
                ", overBuyStr='" + overBuyStr + '\'' +
                ", canBuy=" + canBuy +
                ", status='" + status + '\'' +
                ", departureCity='" + departureCity + '\'' +
                ", arrivalCity='" + arrivalCity + '\'' +
                ", url='" + url + '\'' +
                ", createTime=" + createTime +
                ", createTimeStr='" + createTimeStr + '\'' +
                ", pictures=" + pictures +
                ", statusStr='" + statusStr + '\'' +
                ", recommend='" + recommend + '\'' +
                '}';
    }

    public String getCreateTimeStr() {

        return DateUtils.dataToStr(createTime,"yyyy-MM-dd HH:mm:ss");
    }

    public void setCreateTimeStr(String createTimeStr) {
        this.createTimeStr = createTimeStr;
    }

    public String getStartBuyStr() {

        return DateUtils.dataToStr(startBuy, "yyyy-MM-dd HH:mm:ss");
    }

    public void setStartBuyStr(String startBuyStr) {
        this.startBuyStr = startBuyStr;
    }

    public String getOverBuyStr() {
        return DateUtils.dataToStr(overBuy, "yyyy-MM-dd HH:mm:ss");
    }

    public void setOverBuyStr(String overBuyStr) {
        this.overBuyStr = overBuyStr;
    }

    public String getRecommend() {
        return recommend;
    }

    public void setRecommend(String recommend) {
        this.recommend = recommend;
    }

    public String getStatusStr() {
        return InfoJudge.getStatus(status);
    }

    public void setStatusStr(String statusStr) {
        this.statusStr = statusStr;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public double getPreferentialPrice() {
        return preferentialPrice;
    }

    public void setPreferentialPrice(double preferentialPrice) {
        this.preferentialPrice = preferentialPrice;
    }

    public String getDiscount() {

        return String.format("%.1f", (preferentialPrice / price) * 10);
    }

    public void setDiscount(String discount) {
        this.discount = discount;
    }

    public Date getStartBuy() {
        return startBuy;
    }

    public void setStartBuy(Date startBuy) {
        this.startBuy = startBuy;
    }

    public Date getOverBuy() {
        return overBuy;
    }

    public void setOverBuy(Date overBuy) {
        this.overBuy = overBuy;
    }

    public boolean isCanBuy() {

        return DateUtils.nowDateBeforeAndAfter(startBuy,overBuy);
    }

    public void setCanBuy(boolean canBuy) {
        this.canBuy = canBuy;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDepartureCity() {
        return departureCity;
    }

    public void setDepartureCity(String departureCity) {
        this.departureCity = departureCity;
    }

    public String getArrivalCity() {
        return arrivalCity;
    }

    public void setArrivalCity(String arrivalCity) {
        this.arrivalCity = arrivalCity;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public List<Picture> getPictures() {
        return pictures;
    }

    public void setPictures(List<Picture> pictures) {
        this.pictures = pictures;
    }
}
