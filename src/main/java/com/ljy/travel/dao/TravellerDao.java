package com.ljy.travel.dao;

import com.ljy.travel.model.Traveller;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * @author: gary
 * @date: 2019/12/5 18:10
 */
@Mapper
public interface TravellerDao {
    /**
     * 查找所有旅客信息
     * @return
     */
    @Select("select * from t_traveller")
    public List<Traveller> findAllTraveller();

    /**
     * 根据旅客id查找旅客
     * @param uid
     * @return
     */
    @Select("select * from t_traveller where uid=#{uid}")
    public Traveller findTravellerById(String uid);

    /**
     * 根据username查找旅客
     * @param username
     * @return
     */
    @Select("select * from t_traveller where username=#{username}")
    public Traveller findTravellerByUsername(String username);

    /**
     * 保存旅客信息
     * @param traveller
     */
    @Insert("insert into t_traveller(username,password,name,birthday,sex,telephone,email,status,code,idCardNum) values " +
            " (#{username},#{password},#{name},#{birthday},#{sex},#{telephone},#{email},#{status},#{code},#{idCardNum})")
    public void saveTraveller(Traveller traveller);

    /**
     * 删除旅客
     * @param uid
     */
    @Delete("delete from t_traveller where uid=#{uid}")
    public void deleteTraveller(String uid);

    /**
     * 修改旅客信息
     * @param traveller
     */
    @Update("update t_traveller set username=#{username}," +
            "name=#{name},birthday=#{birthday},sex=#{sex},telephone=#{telephone},email=#{email},status=#{status},idCardNum=#{idCardNum} where uid=#{uid}"  )
    public void updataTraveller(Traveller traveller);

    /**
     * 查找旅客数量
     * @return
     */
    @Select("select count(1) from t_traveller")
    public int findCount();
}
