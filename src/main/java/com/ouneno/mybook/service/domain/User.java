package com.ouneno.mybook.service.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class User {
	
	private int userId;
	private String userFirstName;
	private String userLastName;
	private String userEmail;
	private String userPhone;
	private String userPwd;
	private String userPwdCk;

}
