package com.ljy.travel.utils;

import java.util.UUID;

/**
 * @author: gary
 * @date: 2019/12/6 13:15
 */

/**
 * 产生UUID随机字符工具类
 */
public class UuidUtil {
    private UuidUtil() {

    }

    public static String getUuid() {
        return UUID.randomUUID().toString().replace("-", "");
    }
}
