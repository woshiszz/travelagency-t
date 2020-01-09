package com.ljy.travel.web.admincontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author: gary
 * @date: 2019/12/3 13:49
 */
@Controller
@RequestMapping("/admin")
public class IndexController {
    @RequestMapping("/index")
    public String toIndex() {
        return "admin/admin-index";
    }
}
