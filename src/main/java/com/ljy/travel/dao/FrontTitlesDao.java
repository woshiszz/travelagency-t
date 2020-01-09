package com.ljy.travel.dao;

import com.ljy.travel.model.FrontTitles;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import java.util.LinkedList;
import java.util.List;

/**
 * @author: gary
 * @date: 2019/11/26 15:04
 */
@Mapper
public interface FrontTitlesDao {
    /**
     * 查找展示页面标题
     * @return
     */
    @Select("select * from front_titles")
    @Results({
            @Result(id = true, column = "id", property = "id"),
            @Result(column = "name", property = "name"),
            @Result(column = "href", property = "href"),
            @Result(column = "create_date", property = "createDate"),
            @Result(column = "update_date", property = "updateDate"),
            @Result(column = "sort", property = "sort"),

    })
    public List<FrontTitles> findAll();
}
