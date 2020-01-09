package com.ljy.travel.web.travellercontroller;

import com.ljy.travel.model.Traveller;
import com.ljy.travel.services.TravellerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @author: gary
 * @date: 2019/12/5 18:50
 */
@Controller
@RequestMapping("/traveller")
public class TravellerController {
    @Autowired
    private TravellerService travellerService;

    @RequestMapping("/findAllTraveller")
    public ModelAndView findAllTraveller() {
        ModelAndView mv = new ModelAndView();
        List<Traveller> Travellers = travellerService.findAllTraveller();
        mv.setViewName("admin/admin-traveller-list");
        mv.addObject("travellerList", Travellers);
        return mv;
    }

    @RequestMapping("/toAddTraveller")
    public String toAddTraveller() {
        return "admin/admin-traveller-add";
    }

    @RequestMapping("/saveTraveller")
    public String saveTraveller(Traveller traveller) {
        travellerService.saveTraveller(traveller);
        return "redirect:findAllTraveller";
    }


    @RequestMapping("/findTravellerById")
    public ModelAndView findTravellerById(String uid) {
        System.out.println(uid);
        ModelAndView mv = new ModelAndView();
        Traveller traveller = travellerService.findTravellerById(uid);
        mv.addObject("travellerInfo", traveller);
        mv.setViewName("admin/admin-traveller-info");
        return mv;
    }

    @RequestMapping("/updateTravellerById")
    public String updateTravellerById(Traveller traveller) {
        travellerService.updatTraveller(traveller);
        return "redirect:findTravellerById?uid=" + traveller.getUid();
    }

    @RequestMapping("/deleteTravellerById")
    public String deleteTravellerById(String uid) {
        travellerService.deleteTraveller(uid);
        return "redirect:findAllTraveller";
    }
}
