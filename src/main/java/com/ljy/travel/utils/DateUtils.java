package com.ljy.travel.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author: gary
 * @date: 2019/10/7 12:57
 */
public class DateUtils {
    private static final Date instance = new Date();


    /**
     * 得到现在的时间
     * @return
     */
    public static Date getNowTime() {
        return instance;
    }
    /**
     * 日期转换字符串
     */
    public static String dataToStr(Date date, String patt) {
        SimpleDateFormat sdf = new SimpleDateFormat(patt);
        String format = sdf.format(date);
        return format;
    }

    /**
     * 字符串转日期
     */
    public static Date strToDate(String str, String patt) throws ParseException {
        SimpleDateFormat sdf = new SimpleDateFormat(patt);
        Date parse = sdf.parse(str);
        return parse;
    }

    /**
     * 判断某日期是否在before日期与after日期之间
     * @param before
     * @param after
     * @return
     */
    public static boolean nowDateBeforeAndAfter(Date before, Date after) {
        Date date = new Date();
        return (date.before(before) && date.after(after));
    }

}
