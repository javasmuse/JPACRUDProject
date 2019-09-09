package com.skilldistillery.bootmvcA;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@EntityScan("com.skilldistillery.chess.entities")
@ComponentScan(basePackages = "com.skilldistillery.bootmvc")
public class ChessApplication extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
	  return application.sources(ChessApplication.class);
	}
	
	public static void main(String[] args) {
		SpringApplication.run(ChessApplication.class, args);
	}
}
