package com.ljy.travel;

import com.ljy.travel.dao.AdminUserDao;
import com.ljy.travel.dao.SysLogDao;
import com.ljy.travel.dao.TravellerDao;
import com.ljy.travel.model.AdminRole;
import com.ljy.travel.model.AdminUser;
import com.ljy.travel.model.SysLog;
import com.ljy.travel.model.Traveller;
import com.ljy.travel.services.AdminUserService;
import com.ljy.travel.services.LoginServices;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.test.context.junit4.SpringRunner;

import java.text.NumberFormat;
import java.util.List;

/**
 * @author: gary
 * @date: 2019/11/25 16:04
 */
@SpringBootTest
@RunWith(SpringRunner.class)
public class TravelApplicationTest {
    @Autowired
    private AdminUserService userService;
    @Autowired
    private AdminUserDao userDao;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;
    @Autowired
    private LoginServices loginServices;
    @Autowired
    private SysLogDao logDao;
    @Autowired
    private TravellerDao travellerDao;

    @Test
    public void AdminUserFindAllTest() {
        List<AdminUser> all = userService.findAll();
        for (AdminUser adminUser : all) {
            System.out.println(adminUser);
        }

    }

    @Test
    public void updateUserTest() {
        AdminUser user = new AdminUser();
        AdminRole role = new AdminRole();
        role.setRoleName("超级管理员");
        user.setRole(role);
        user.setId("5");
        user.setName("白白");
        user.setPhoneNum("78787878787");
        user.setSex("男");
        user.setStatus("未开启");
        user.setUsername("baibai");
        userService.updateUser(user);

    }

    @Test
    public void findByIdTest() {
        AdminUser user = userService.findById("2");
        System.out.println(user);
    }

    @Test
    public void findByUsername() {
        AdminUser admin = userDao.findByUsername("admin");
        System.out.println(admin);
    }

    @Test
    public void jiami() {
        String a = "123";
        String encode = bCryptPasswordEncoder.encode("123");
        boolean e = bCryptPasswordEncoder.matches("123","$2a$10$L6LCGMyaNCcIlNyeik0xeOP345/2axX.A57fieIpuVkv2LB5jSi4O");
        System.out.println(encode);
        System.out.println(e);
    }

    @Test
    public void securityTest() {
        UserDetails admin = loginServices.loadUserByUsername("admin");
        System.out.println(admin);
    }

    @Test
    public void findLog() {
        List<SysLog> all = logDao.findAll();
        for (SysLog sysLog : all) {
            System.out.println(sysLog);
        }

    }

    @Test
    public void douTest() {
        //转0.62
        double a = 3.33;
        double b = 5.33;
        System.out.println(String.format("%.2f", a/b));
        //转百分数
        double abc=0.6666666;
        NumberFormat nt = NumberFormat.getPercentInstance();
        String format = nt.format(abc);
        System.out.println(format);
    }

    @Test
    public void travelFindAllTest() {
        List<Traveller> allTraveller = travellerDao.findAllTraveller();
        for (Traveller traveller : allTraveller) {
            System.out.println(traveller);
        }
    }

    @Test
    public void findCountTest() {
        int count = userDao.findCount();
        System.out.println(count);
    }
}
