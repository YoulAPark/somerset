package com.ouneno.mybook.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping
public class HomeRestController {
	
	public HomeRestController() {
		System.out.println("작업순서확인 : "+this.getClass());
	}

}
