package com.ouneno.mybook.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

	@Controller
	public class HomeController {
		@RequestMapping(value = "/home", method=RequestMethod.GET)
		@ResponseBody
		public String goHome(HttpServletRequest request) {
			System.out.println("enter");
			return "Hello Spring Boot";
		}
		
	@Controller
	public class StartController {
		@RequestMapping(value = "/test", method=RequestMethod.GET)
		@ResponseBody
		public String goTest(HttpServletRequest request) {
			System.out.println("StartController 시작");
			return "Start Controller page 입니다.";
		}
	}
}