package com.ouneno.somerset.controller.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ouneno.somerset.service.domain.User;
import com.ouneno.somerset.service.user.Impl.UserService;

@Controller
@RequestMapping("/user/*")
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping("/addUserPage")
	public String addUserPage() throws Exception {
		return "user/addUserPage";
	}

	@RequestMapping("/loginView")
	public String loginView() throws Exception {
		return "user/loginView";
	}

	@RequestMapping("/login")
	public String login(User user, HttpSession session) throws Exception {

		User dbUser = userService.login(user);
		String dbId = dbUser.getUserId();
		String dbPwd = dbUser.getUserPwd();

		if (dbId.equals(user.getUserId()) && dbPwd.equals(user.getUserPwd())) {
			System.out.println("일치함");
			session.setAttribute("dbUser", dbUser);
			return "redirect:/";
		} else {
			System.out.println("비일치함");
			return "user/loginView";
		}
	}

	@RequestMapping("logout")
	public String logout(HttpSession session) throws Exception {
		session.invalidate();
		return "redirect:/";
	}

	@RequestMapping("/getUser")
	public String getUser() throws Exception {
		return "user/getUser";
	}

}