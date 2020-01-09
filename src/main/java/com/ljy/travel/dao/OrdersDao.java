package com.ljy.travel.dao;

import com.ljy.travel.model.Orders;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @author: gary
 * @date: 2019/12/8 10:42
 */
@Mapper
public interface OrdersDao {
    /**
     * 查找所有订单
     * @return
     */
    @Select("select * from t_order")
    public List<Orders> findAll();

    /**
     * 根据id查询订单
     * @param id
     * @return
     */
    @Select("select * from t_order where id=#{id}")
    public Orders findOrderById(String id);

    /**
     * 根据旅客id查询订单
     * @param tid
     * @return
     */
    @Select("select * from t_order where tid=#{tid}")
    public List<Orders> findOrderByTid(String tid);

    /**
     * 根据商品id查询订单
     * @param cid
     * @return
     */
    @Select("select * from t_order where cid=#{cid}")
    public List<Orders> findOrderByCid(String cid);

    /**
     * 根据旅客id查询该旅客所有订单总金额
     * @param tid
     * @return
     */
    @Select("select sum(totalPrices) from t_order where tid=#{tid}")
    public String findTravellerTotalPrices(String tid);

    /**
     * 根据商品id查询该商品所有订单总金额
     * @param cid
     * @return
     */
    @Select("select sum(totalPrices) from t_order where cid=#{cid}")
    public String findCommodityTotalPrices(String cid);

    /**
     * 根据订单id删除订单
     * @param id
     */
    @Delete("delete from t_order where id=#{id}")
    public void deleteOrder(String id);

    /**
     * 查询订单总数量
     * @return
     */
    @Select("select count(1) from t_order ")
    public int findOrderTotal();
}
