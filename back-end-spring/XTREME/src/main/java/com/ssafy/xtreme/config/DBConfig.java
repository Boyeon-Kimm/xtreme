package com.ssafy.xtreme.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@MapperScan(basePackages = "com.ssafy.xtreme.model.dao")
public class DBConfig {

}
