package com.ljy.travel.dao;

import com.ljy.travel.model.Commodity;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * @author: gary
 * @date: 2019/12/7 16:07
 */
@Mapper
public interface CommodityDao {
    /**
     * 查找全部商品
     * @return
     */
    @Select("select * from t_commodity")
    public List<Commodity> findAll();

    /**
     * 保存商品
     * @param commodity
     */
    @Insert("insert into t_commodity(id,name,price,intro,preferentialPrice,discount,startBuy,overBuy,status,departureCity,arrivalCity,createTime,recommend) " +
            "values(#{id},#{name},#{price},#{intro},#{preferentialPrice},#{discount},#{startBuy},#{overBuy},#{status},#{departureCity},#{arrivalCity},#{createTime},#{recommend})")
    public void saveCommodity(Commodity commodity);

    /**
     * 根据id删除商品
     * @param id
     */
    @Delete("delete from t_commodity where id=#{id}")
    public void deleteCommodityById(String id);

    /**
     * 修改商品信息
     * @param commodity
     */
    @Update("update t_commodity set name=#{name},price=#{price},intro=#{intro},preferentialPrice=#{preferentialPrice}," +
            "discount=#{discount},startBuy=#{startBuy},overBuy=#{overBuy},status=#{status},departureCity=#{departureCity}," +
            "arrivalCity=#{arrivalCity},createTime=#{createTime},recommend=#{recommend} where id=#{id}")
    public void updateCommodity(Commodity commodity);

    /**
     * 根据id查找商品
     * @param id
     * @return
     */
    @Select("select * from t_commodity where id=#{id}")
    public Commodity findCommodityById(String id);

    /**
     * 查找商品数量
     * @return
     */
    @Select("select count(1) from t_commodity")
    public int findCount();
}
