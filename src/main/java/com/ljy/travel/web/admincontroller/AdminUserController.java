package com.ljy.travel.web.admincontroller;

import com.ljy.travel.model.AdminRole;
import com.ljy.travel.model.AdminUser;
import com.ljy.travel.services.AdminUserService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;


/**
 * @author: gary
 * @date: 2019/11/28 20:53
 */
@Controller
@RequestMapping("/admin/user")
public class AdminUserController {
    @Autowired
    private AdminUserService userService;


    @RequestMapping("/findAll")
    public ModelAndView findAll() {
        ModelAndView mv = new ModelAndView();
        List<AdminUser> list = userService.findAll();
        mv.setViewName("admin/admin-user-list");
        mv.addObject("userList", list);
        return mv;
    }

    @RequestMapping("/findById")
    public ModelAndView findById(String id) {
        ModelAndView mv = new ModelAndView();
        AdminUser user = userService.findById(id);
        mv.setViewName("admin/admin-user-editor");
        mv.addObject("userInfo", user);
        return mv;
    }

    @RequestMapping("/update")
    public String updateUser(@RequestParam(name = "id") String id, @RequestParam(name = "name") String name,
                             @RequestParam(name = "username") String username, @RequestParam(name = "sex") String sex,
                             @RequestParam(name = "role.roleName") String roleName, @RequestParam(name = "phoneNum") String phoneNum,
                             @RequestParam(name = "status") String status) {
        AdminUser user = new AdminUser();
        AdminRole role = new AdminRole();
        user.setId(id);
        user.setName(name);
        user.setUsername(username);
        user.setPhoneNum(phoneNum);
        if (sex.equals("1")) {
            user.setSex("男");
        } else {
            user.setSex("女");
        }
        if (roleName.equals("1")) {
            role.setRoleName("超级管理员");
            user.setRole(role);
        } else {
            role.setRoleName("管理员");
            user.setRole(role);
        }
        if (status.equals("1")) {
            user.setStatus("开启");
        } else {
            user.setStatus("未开启");
        }
        userService.updateUser(user);
        return "redirect:findAll";
    }

    @RequestMapping("/delete")
    public String deleteUserById(@RequestParam(name = "id") String id) {
        userService.deleteUserById(id);
        return "redirect:findAll";
    }

    @RequestMapping("/addfreemarker")
    public String addfreemarker() {
        return "admin/admin-user-add";
    }

    @RequestMapping("save")
    public String saveUser(@RequestParam(name = "name") String name,
                           @RequestParam(name = "username") String username, @RequestParam(name = "sex") String sex,
                           @RequestParam(name = "role.roleName") String roleName, @RequestParam(name = "phoneNum") String phoneNum,
                           @RequestParam(name = "status") String status) {
        AdminUser user = new AdminUser();
        AdminRole role = new AdminRole();
        user.setName(name);
        user.setPassword("123");
        user.setUsername(username);
        user.setPhoneNum(phoneNum);
        if (sex.equals("1")) {
            user.setSex("男");
        } else {
            user.setSex("女");
        }
        if (roleName.equals("1")) {
            role.setRoleName("超级管理员");
            user.setRole(role);
        } else {
            role.setRoleName("管理员");
            user.setRole(role);
        }
        if (status.equals("1")) {
            user.setStatus("开启");
        } else {
            user.setStatus("未开启");
        }
        userService.saveUser(user);
        return "redirect:findAll";
    }

    @RequestMapping("/save1")
    public void saveUser1(AdminUser user) {
        System.out.println(user.getName());
        System.out.println(user.getUsername());
        System.out.println(user.getSex());
        System.out.println(user.getRole());
        System.out.println(user.getPhoneNum());
        System.out.println(user.getStatus());
    }

    @RequestMapping("/test")
    public void test(@RequestParam(name = "name") String name,
                     @RequestParam(name = "username") String username, @RequestParam(name = "sex") String sex,
                     @RequestParam(name = "role.roleName") String roleName, @RequestParam(name = "phoneNum") String phoneNum,
                     @RequestParam(name = "status") String status) {
        System.out.println(name);
        System.out.println(username);
        System.out.println(sex);
        System.out.println(roleName);
        System.out.println(phoneNum);
        System.out.println(status);

    }
}
