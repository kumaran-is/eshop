package com.eshop.product;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@SpringBootApplication
public class ProductAPIApplication {

	public static void main(String[] args) {
		SpringApplication.run(ProductAPIApplication.class, args);
		log.info("product-api microservice started......");
	}

}
