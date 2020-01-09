package com.ljy.travel.config;

import com.ljy.travel.services.LoginServices;
import freemarker.ext.jsp.TaglibFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;

import javax.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.List;

/**
 * @author: gary
 * @date: 2019/12/2 16:23
 */
@Configuration
/**
 * 注解开启Spring Security的功能
 */
@EnableWebSecurity
/**
 * WebSecurityConfigurerAdapter:重写它的方法来设置一些web的安全
 */
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
    @Autowired
    private LoginServices services;
    @Autowired
    private FreeMarkerConfigurer configurer;

    /**
     * 注册加密bean
     * @return
     */
    @Bean
    public BCryptPasswordEncoder bCryptPasswordEncoder() {
        return new BCryptPasswordEncoder();
    }
    /**
     * freemarker整合security配置类
     */
    @PostConstruct
    public void freeMarkerConfigurer() {
        List<String> tlds = new ArrayList<String>();
        tlds.add("/static/tags/security.tld");
        TaglibFactory taglibFactory = configurer.getTaglibFactory();
        taglibFactory.setClasspathTlds(tlds);
        if (taglibFactory.getObjectWrapper() == null) {
            taglibFactory.setObjectWrapper(configurer.getConfiguration().getObjectWrapper());
        }
    }

    /**
     * 配置使用service对登录账号密码进行数据库查询处理
     * @param auth
     * @throws Exception
     */
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(services);
    }

    /**
     * 一些权限配置
     * @param http
     * @throws Exception
     */
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                //定义哪些url需要保护，哪些url不需要保护
                .authorizeRequests()
                //定义不需要认证就可以访问
                .antMatchers("/static/**", "/admin/login", "/admin-login", "/login").permitAll()
                //定义所有请求都需要认证
                .anyRequest().authenticated()
                .and()
                .formLogin()
                //定义当需要用户登录时候，转到的登录页面
                .loginPage("/login")
                .successForwardUrl("/admin/index")
                .failureForwardUrl("/failure")
                .permitAll()
                .and()
                .logout()
                .permitAll()
                .and()
                //记住我
                .rememberMe().rememberMeParameter("remember");
        //关闭CSRF攻击防御
        http.csrf().disable();

    }



}
