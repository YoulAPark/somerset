<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<!-- Bootstrap meta name 추가 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

<title> addUser.jsp </title>

<!-- CDN Script Start -->
	
	<!-- jQuery -->	
	<script defer src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
	
	<!-- SweetAlert -->
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>	
		
	<!-- Bootstrap -->
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>
	
<!-- CDN Script End -->	

<!-- CSS style Start -->
<style>

	.ck_Font_css {
		text-align : left;
		height : 20px;
		font-size : 12px;
	}
	
</style>
<!-- CSS style End -->

<script>

	function addUser() {
		
		var userNickname = $("input[name='userNickname']").val();
		var userId = $("input[name='userId']").val();
		var userPwd = $("input[name='userPwd']").val();
		var userEmail = $("input[name='userEmail']").val();
		var userPhone = $("input[name='userPhone']").val();
		
		$.ajax({
			url : "/user/json/addUser/"
			,	method : "POST" 
			,	dataType : "JSON" 
			,	contentType : "application/json"
			,	data : JSON.stringify({
						"userNickname" : userNickname
					,	"userId" : userId
					,	"userPwd" : userPwd
					,	"userEmail" : userEmail
					,	"userPhone" : userPhone
			})
			,	success : function() {
					location.href("/");
				}, error : function() {
					console.log("실패")
				}
		});
		
	}

	function validate(type) {
		
		if(type==1){	
			$("#inputNickname").keyup(function(){
				var userNickname = $("input[name='userNickname']").val();
					$.ajax({
						url : "/user/json/findValidate/"+type
						,	method : "POST" 
						,	dataType : "JSON" 
						,	contentType : "application/json"
						,	data : JSON.stringify({
									"userNickname" : userNickname
						})
						,	success : function(data) {
								if(data == 1) {
									$("#nicknameCk").text("해당 닉네임은 이미 사용중입니다.");
									$("#nicknameCk").css("color", "red");
									return;
								} else if (data == 0 ) {
									$("#nicknameCk").text("사용가능한 닉네임입니다.");
									$("#nicknameCk").css("color", "black");
									return;
								}
							}, error : function() {
							}
					});
			});
			
		} else if(type==2) {	
			$("#inputId").keyup(function() {
				var userId = $("input[name='userId']").val();
				$.ajax({
					url : "/user/json/findValidate/"+type
					,	method : "POST" 
					,	dataType : "JSON" 
					,	contentType : "application/json"
					,	data : JSON.stringify({
								"userId" : userId
					})
					,	success : function(data) {
							if(data == 1) {
								$("#idCk").text("해당 아이디는 이미 사용중입니다.");
								$("#idCk").css("color", "red");
							} else if (data == 0 ) {
								$("#idCk").text("사용가능한 아이디입니다.");
								$("#idCk").css("color", "black");
							}
						}, error : function() {
						}
				});
			});
		
		} else if(type==3) {
			$("#inputEmail").keyup(function() {
				var userEmail = $("input[name='userEmail']").val();				
					$.ajax({
						url : "/user/json/findValidate/"+type
						,	method : "POST" 
						,	dataType : "JSON" 
						,	contentType : "application/json"
						,	data : JSON.stringify({
									"userEmail" : userEmail
						})
						,	success : function(data) {
								if(data == 1) {
									$("#emailCk").text("해당 이메일은 이미 사용중입니다.");
									$("#emailCk").css("color", "red");
								} else if (data == 0 ) {
									$("#emailCk").text("사용가능한 이메일입니다.");
									$("#emailCk").css("color", "black");
								}
							}, error : function() {
							}
					});
			});
		}
	}

	$(function() {
		$("#inputPwd").keyup(function() {
			var regex = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{8,20}$/;
			var userPwd = regex.exec($("input[name='userPwd']").val());
			if (userPwd != null) {
				$('#pwdCk').text("");
				return;
			} else {
				$('#pwdCk').text("8자 이상, 숫자와 특수문자 포함을 권장합니다");
                $('#pwdCk').css("color","red");
                return;
			}
		});
	});
	
	$(function() {
		$("#inputPwdCf").keyup(function() {
			var userPwd = $("input[name='userPwd']").val();
			var userPwdCf = $("input[name='userPwdCf']").val();
			if (userPwd == userPwdCf) {
				$('#pwdCf').text('');
				return;
			} else {
				$('#pwdCf').text('비밀번호가 일치하지 않습니다.');
				return;
			}
		});
	});
	
	$(function() {
		$("#inputPhone").keyup(function() {
			var regex = /^01(?:0|1|[6-9])(?:\d{3}|\d{4})\d{4}$/;		
			var userPhone = regex.exec($("input[name='userPhone']").val());
			if (userPhone != null) {
				$('#phoneCk').text("");
			} else {
				$('#phoneCk').text("'-'없이 숫자만 입력 가능합니다");
                $('#phoneCk').css("color","red");
			}
		});
	});
			

</script>

</head>

<body>

<!-- Navigation -->
	<%@ include file ="../layouts/header.jsp" %>

<!-- Contents -->

<form class="inputprod col-5 mx-auto">	 
	
		<label for="basic-url" class="form-label">회원가입</label>	
		 
		<div class="form-floating">
			<input type="text" class="form-control" name="userNickname" id="inputNickname" onclick="validate(1)" placeholder="Nickname" value="${user.userNickname}">
			<label for="floatingNickname">닉네임</label>
		</div>
		<div class="ck_Font_css" id="nicknameCk"></div>
			
		<div class="form-floating">
			<input type="text" class="form-control" name="userId" id="inputId" onclick="validate(2)" placeholder="Id" value="${user.userId}">
			<label for="floatingId">아이디</label>
		</div>
		<div class="ck_Font_css" id="idCk"></div>
		
		<div class="form-floating">
			<input type="password" class="form-control" name="userPwd" id="inputPwd" placeholder="Pwd" value="${user.userPwd}">
			<label for="floatingPwd">비밀번호</label>
		</div>
		<div class="ck_Font_css" id="pwdCk"></div>
		
		<div class="form-floating">
			<input type="password" class="form-control" name="userPwdCf" id="inputPwdCf" placeholder="PwdCf">
			<label for="floatingPwd">비밀번호확인</label>
		</div>
		<div class="ck_Font_css" id="pwdCf"></div>
		
		<div class="form-floating">
			<input type="email" class="form-control" name="userEmail" id="inputEmail" onclick="validate(3)" placeholder="Email" value="${user.userEmail}">
			<label for="floatingEmail">이메일</label>
		</div>
		<div class="ck_Font_css" id="emailCk"></div>
		
		<div class="form-floating">
			<input type="text" class="form-control" name="userPhone" id="inputPhone" placeholder="Phone" value="${user.userPhone}">
			<label for="floatingPhone">모바일번호</label>
		</div>
		<div class="ck_Font_css" id="phoneCk"></div>
 
		<div class="d-grid gap-2">
			<button class="btn btn-dark" type="submit" id="submitBtn" onclick="addUser()">저장</button>
		</div>
		
</form>	

<!-- Site info -->	
	<%@ include file ="../layouts/footer.jsp" %>	
	
</body>
</html>