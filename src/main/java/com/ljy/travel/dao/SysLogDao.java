package com.ljy.travel.dao;

import com.ljy.travel.model.SysLog;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @author: gary
 * @date: 2019/12/3 21:58
 */
@Mapper
public interface SysLogDao {
    @Insert("insert into syslog(visitTime,username,ip,url,executionTime,method) " +
            "values(#{visitTime},#{username},#{ip},#{url},#{executionTime},#{method})")
    public void save(SysLog sysLog);

    @Select("select * from sysLog ORDER BY visitTime desc")
    public List<SysLog> findAll();
}
