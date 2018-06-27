package com.msa.demo.sockshop;

import org.apache.servicecomb.springboot.starter.provider.EnableServiceComb;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.mybatis.spring.annotation.MapperScan;

@SpringBootApplication
@EnableAutoConfiguration
@EnableServiceComb
public class CatalogueApplication {
    public static void main(String[] args) throws Exception {
        SpringApplication.run(CatalogueApplication.class, args);
    }
}
