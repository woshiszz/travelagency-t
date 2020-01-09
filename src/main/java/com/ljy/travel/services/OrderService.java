package com.ljy.travel.services;

import com.ljy.travel.model.Orders;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @author: gary
 * @date: 2019/12/8 11:05
 */
public interface OrderService {
    /**
     * 查找所有订单
     * @return
     */
    public List<Orders> findAll();

    /**
     * 根据id查询订单
     * @param id
     * @return
     */
    public Orders findOrderById(String id);

    /**
     * 根据旅客id查询订单
     * @param tid
     * @return
     */
    public List<Orders> findOrderByTid(String tid);

    /**
     * 根据商品id查询订单
     * @param cid
     * @return
     */
    public List<Orders> findOrderByCid(String cid);

    /**
     * 根据旅客id查询该旅客所有订单总金额
     * @param tid
     * @return
     */
    public String findTravellerTotalPrices(String tid);

    /**
     * 根据商品id查询该商品所有订单总金额
     * @param cid
     * @return
     */
    public String findCommodityTotalPrices(String cid);

    /**
     * 根据订单id删除订单
     * @param id
     */
    public void deleteOrder(String id);

    /**
     * 查询订单总数量
     * @return
     */
    public int findOrderTotal();
}
