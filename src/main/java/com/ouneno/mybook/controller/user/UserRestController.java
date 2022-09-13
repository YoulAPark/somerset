package com.ouneno.mybook.controller.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ouneno.mybook.service.domain.User;
import com.ouneno.mybook.service.user.Impl.UserService;

@RestController
@RequestMapping("/user/*")
public class UserRestController {

	@Autowired
	private UserService userService;
	
	@PostMapping("/json/findValidate/{type}")
	public int findValidate (@RequestBody User user, @PathVariable int type) throws Exception{
		System.out.println("***** : "+user.getUserNickname());
		userService.findValidate(user, type);
		return userService.findValidate(user, type);
	}
	
	@PostMapping("/json/addUser/")
	public void addUser(@RequestBody User user) throws Exception{
		userService.addUser(user);
	}
	
	@PostMapping("/json/login")
	public Boolean login(@RequestBody User user, HttpSession session) throws Exception{
				System.out.println("user"+ user);
				// DB에 들어있는 값
				User userDB = userService.login(user);
				String dbId = userDB.getUserId();
				String dbPwd = userDB.getUserPwd();
				
				// 입력 값
				String inputId = user.getUserId();
				String inputPwd = user.getUserPwd();
				
				if (dbId.equals(inputId) && dbPwd.equals(inputPwd)) {
					System.out.println("일치함");
					session.setAttribute("userDB", userDB);
					return true;
				} else {
					return false;
				}
	}
	
}
