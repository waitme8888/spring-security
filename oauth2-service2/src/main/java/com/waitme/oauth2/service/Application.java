package com.waitme.oauth2.service;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@EnableDiscoveryClient
@RestController
@EnableResourceServer
public class Application {

    @RequestMapping("/")
    public String hi() {
        return "hi, i'm service2";
    }

	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}
}
