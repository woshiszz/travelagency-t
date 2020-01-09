package com.ljy.travel.web.commoditycontroller;

import com.ljy.travel.model.Commodity;
import com.ljy.travel.services.CommodityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @author: gary
 * @date: 2019/12/7 16:54
 */
@Controller
@RequestMapping("/commodity")
public class CommodityController {
    @Autowired
    private CommodityService commodityService;

    @RequestMapping("/findAll")
    public String findAll(Model model) {
        List<Commodity> all = commodityService.findAll();
        model.addAttribute("commodityList", all);
        return "admin/admin-commodity-list";
    }

    @RequestMapping("/findCommodityById")
    public String findCommodityById(String id, Model model) {
        Commodity commodity = commodityService.findCommodityById(id);
        model.addAttribute("commodityInfo", commodity);
        return "admin/admin-commodity-info";
    }

    @RequestMapping("/updateCommodityById")
    public String updateCommodityById(Commodity commodity) {
        System.out.println("--"+commodity.toString());
//        commodityService.updateCommodity(commodity);
        return "redirect:findCommodityById?id=" + commodity.getId();
    }

    @RequestMapping("/saveCommodity")
    public String saveCommodity(Commodity commodity) {
        commodityService.saveCommodity(commodity);
        return "redirect:findAll";
    }

    @RequestMapping("/deleteCommodityById")
    public String deleteCommodityById(String id) {
        commodityService.deleteCommodityById(id);
        return "redirect:findAll";
    }
}
