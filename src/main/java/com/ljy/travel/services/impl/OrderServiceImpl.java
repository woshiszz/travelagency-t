package com.ljy.travel.services.impl;

import com.ljy.travel.dao.OrdersDao;
import com.ljy.travel.model.Orders;
import com.ljy.travel.services.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author: gary
 * @date: 2019/12/8 11:06
 */
@Service
@Transactional
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrdersDao ordersDao;
    @Override
    public List<Orders> findAll() {
        return null;
    }

    @Override
    public Orders findOrderById(String id) {
        return null;
    }

    @Override
    public List<Orders> findOrderByTid(String tid) {
        return null;
    }

    @Override
    public List<Orders> findOrderByCid(String cid) {
        return null;
    }

    @Override
    public String findTravellerTotalPrices(String tid) {
        return null;
    }

    @Override
    public String findCommodityTotalPrices(String cid) {
        return null;
    }

    @Override
    public void deleteOrder(String id) {

    }

    @Override
    public int findOrderTotal() {
        return 0;
    }
}
