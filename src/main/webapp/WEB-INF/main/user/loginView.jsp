<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<!-- Bootstrap meta name 추가 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

<title> loginView.jsp </title>

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
	.input_Font_css {
		text-align : left;
		font-size : 12px;
	}
</style>
<!-- CSS style End -->

<script>

 	$(function() {
 		$("#loginBtn").on("click", function() {
 			login();
 		})
 	})
 	
 	function login() {
 		
 		var userId = $("input[name='userId']").val();
 		var userPwd = $("input[name='userPwd']").val();
 		
 		$("form").attr("method", "POST").attr("action" , "/user/login").submit();
 	}

</script>

</head>

<body>

<!-- Navigation -->
	<%@ include file ="../layouts/header.jsp" %>

<!-- Contents -->
	<form class="inputprod col-5 mx-auto">	
		
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="input_Font_css form-label">아이디</label>
			<input type="text" class="form-control" name="userId" id="userId" placeholder="아이디를 입력해 주세요.">
		</div>
		
		<div class="mb-3">
			<label for="exampleFormControlInput1" class="input_Font_css form-label">비밀번호</label>
			<input type="password" class="form-control" name="userPwd" id="userPwd" placeholder="비밀번호를 입력해 주세요.">
		</div>
		
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
			<label class="form-check-label" for="flexCheckDefault">자동로그인</label>
				<div class="d-grid gap-2 justify-content-md-end">
					<button type="button" class="btn btn-dark btn-sm">비밀번호 찾기</button>
				</div>
		</div>
		
		<div class="d-grid gap-2">
			<button class="btn btn-outline-secondary" type="button" id="loginBtn">로그인</button>
		</div>
		
	</form>
<!-- Site info -->	
	<%@ include file ="../layouts/footer.jsp" %>	
	
</body>
</html>