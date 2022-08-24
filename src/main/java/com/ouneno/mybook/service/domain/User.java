package com.ouneno.mybook.service.domain;

import org.apache.ibatis.annotations.Mapper;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class User {
	
	private int id;
	private String name;
	private String email;

}
