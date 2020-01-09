package com.ljy.travel.web.controller;

import com.ljy.travel.model.FrontTitles;
import com.ljy.travel.services.FrontTitlesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @author: gary
 * @date: 2019/11/26 16:10
 */
@Controller
@RequestMapping("titles")
public class FrontTitlesController {
    @Autowired
    private FrontTitlesService titlesService;

    @RequestMapping("findAll")
    public ModelAndView findAll() {
        ModelAndView mv = new ModelAndView();
        List<FrontTitles> all = titlesService.findAll();
        mv.setViewName("index");
        mv.addObject("titlesList", all);

        return mv;
    }

}
