package com.ouneno.somerset.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ouneno.somerset.service.api.impl.OAuthService;
import com.ouneno.somerset.service.domain.API.SocialLoginType;

@Controller
@RequestMapping("/account/auth/*")
public class APIController {
	
	@Autowired
	private OAuthService oAuthService;
	
	// http://localhost:8080/account/auth/google/callback

	@RequestMapping("{socialLoginType}")
	public void socialLoginRedirect (@PathVariable(name="socialLoginType") String SocialLoginPath) throws Exception {
		SocialLoginType socialLoginType= SocialLoginType.valueOf(SocialLoginPath.toUpperCase());
		oAuthService.request(socialLoginType);
	}

}
