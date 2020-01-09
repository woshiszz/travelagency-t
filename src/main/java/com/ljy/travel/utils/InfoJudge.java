package com.ljy.travel.utils;

/**
 * @author: gary
 * @date: 2019/12/6 13:41
 */
public class InfoJudge {
    public static String getSex(String num) {
        if ("1".equals(num)) {
            return "男";
        } else {
            return "女";
        }
    }

    public static String getStatus(String num) {
        if ("1".equals(num)) {
            return "开启";
        } else {
            return "未开启";
        }
    }


}
