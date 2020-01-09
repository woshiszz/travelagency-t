package com.ljy.travel.web.admincontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author: gary
 * @date: 2019/12/2 16:48
 */
@Controller
public class LoginController {
    @RequestMapping("/admin/login")
    public String adminLoginFreemarker() {
        return "admin-login";
    }

    @RequestMapping("/login")
    public String adminLogin() {
        return "admin-login";
    }

    @RequestMapping("/failure")
    public String toFailure() {
        return "admin/error/loginError";
    }
}
