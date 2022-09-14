package com.ouneno.somerset.service.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class User {
	
	private String userId;
	private String userPwd;
	private String userNickname;
	private String userEmail;
	private String userPhone;

}
