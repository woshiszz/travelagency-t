package com.ljy.travel;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * @author: gary
 * @date: 2019/11/25 15:52
 */
@SpringBootApplication
@MapperScan("com.ljy.travel.dao")
public class TravelApplication {
    public static void main(String[] args) {
        SpringApplication.run(TravelApplication.class, args);
    }
}
