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

	$(function() {
		
		var userNickname = $("input[name='userNickname']").val();
		var userId = $("input[name='userId']").val();
		var userEmail = $("input[name='userEmail']").val();
		// 2022-09-11 test - updateUserView 에서 type 검색
		
		// 1. Nickname
		$("#inputNickname").keyup(function(e) {
			
			$.ajax({
					url : "/user/json/findValidate/"
				,	method : "POST" 
				,	dataType : "JSON" 
				,	contentType : "application/json"
				,	data : JSON.stringify({
							"userNickname" : userNickname
				})
				,	success : function(Data, status) {
						console.log("success!");
						/* $('#userNickname').val(Data.userNickname); */
				}
			}); 
			
		});
		
		// 2. Id
		$("#inputId").keyup(function() {
			console.log("userId : "+userId);
		});
		
		// 3. Email
		$("#inputEmail").keyup(function() {			
			console.log("userEmail : "+userEmail);
		});
		
	});
	
	$(function() {
		$("#inputPwd").keyup(function() {
						
		});
	});
	
	$(function() {
		$("#inputPhone").keyup(function() {
						
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
			<input type="text" class="form-control" name="userNickname" id="inputNickname" placeholder="Nickname" value="${user.userNickname}">
			<label for="floatingNickname">닉네임</label>
		</div>
		<div class="ck_Font_css" id="nicknameCk">확인</div>
			
		<div class="form-floating">
			<input type="text" class="form-control" name="userId" id="inputId" placeholder="Id" value="${user.userId}">
			<label for="floatingId">아이디</label>
		</div>
		<div class="ck_Font_css" id="idCk">확인</div>
		
		<div class="form-floating">
			<input type="password" class="form-control" name="userPwd" id="inputPwd" placeholder="Pwd" value="${user.userPwd}">
			<label for="floatingPwd">비밀번호</label>
		</div>
		<div class="ck_Font_css" id="pwdCk">확인</div>
		
		<div class="form-floating">
			<input type="email" class="form-control" name="userEmail" id="inputEmail" placeholder="Email" value="${user.userEmail}">
			<label for="floatingEmail">이메일</label>
		</div>
		<div class="ck_Font_css" id="emailCk">확인</div>
		
		<div class="form-floating">
			<input type="email" class="form-control" name="userPhone" id="inputPhone" placeholder="Phone" value="${user.userPhone}">
			<label for="floatingPhone">모바일번호</label>
		</div>
		<div class="ck_Font_css" id="phoneCk">확인</div>
 
		<div class="d-grid gap-2">
			<button class="btn btn-dark" type="submit" id="submit">저장</button>
		</div>
		
</form>	

<!-- Site info -->	
	<%@ include file ="../layouts/footer.jsp" %>	
	
</body>
</html>