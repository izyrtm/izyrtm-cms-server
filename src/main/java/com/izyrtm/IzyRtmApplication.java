package com.izyrtm;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(value= {"com.izyrtm.mapper"})
public class IzyRtmApplication {

	public static void main(String[] args) {
		SpringApplication.run(IzyRtmApplication.class, args);
	}

}
