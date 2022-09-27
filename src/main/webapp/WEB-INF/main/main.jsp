<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<!-- Bootstrap meta name 추가 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

<title> main.jsp </title>

<!-- CDN Script Start -->
	
	<!-- jQuery -->	
	<script defer src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
	
	<!-- SweetAlert -->
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>	
	
	<!-- Bootstrap -->
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>
	
	<!-- Google Login API -->
	<script src="https://accounts.google.com/gsi/client" async defer></script>
	
	
<!-- CDN Script End -->	

<!-- CSS style Start -->
<style>
	
</style>
<!-- CSS style End -->

<script>
	
	$(function() {
		$("#order").on("click", function(){
			order();
		});
	});
	
	$(function() {
		$("#admin").on("click", function(){
			admin();
		});
	});
	
	$(function() {
		$("#getUser").on("click", function(){
			getUser();
		});
	});

	function order(){
		self.location = "/order/listProduct";
	}
	
	function admin(){
		self.location = "/admin/adminMain";
	}
	
	function userLogin() {
		console.log("?");
		self.location = "/user/loginView";
	}
	
	function userLogout() {
		self.location = "/user/logout";
	}
	
	function getUser() {
		$("form").attr("method", "POST").attr("action" , "/user/getUser").submit();	
	}
	
	/* function loginGoogle() {
		location.href = "/user/loginGoogle"
	} */
	
	// 구글 로그인
	/* function onSignIn(googleUser) {
  var profile = googleUser.getBasicProfile();
  console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
  console.log('Name: ' + profile.getName());
  console.log('Image URL: ' + profile.getImageUrl());
  console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
}
	
	// 구글 로그아웃
	function signOut() {
		var auth2 = gapi.auth2.getAuthInstance();
	    auth2.signOut().then(function () {
	      console.log('User signed out.');
	    });
	  } */
	
	/* function onFailure(error) {
	      console.log(error);
	    } */
</script>

</head>

<body>

<!-- Navigation -->
	<%@ include file ="../main/layouts/header.jsp" %>
${dbUser.userId}님
<!-- Start Contents -->
<!-- 회원 버튼 user Button -->
	<form class="userBtn">	
		
		<c:if test="${empty sessionScope.dbUser}">
			<button type="button" id="login" class="btn btn-light" onclick="userLogin()">로그인</button>
			<button type="button" id="googleLogin" class="btn btn-light g-signin2" onclick="onSignIn">구글로그인</button>
			<!-- <button type="button" id="googleLogin" class="btn btn-light" onclick="signOut()">구글로그아웃</button> -->
			<button type="button" id="join" class="btn btn-light" onclick="location.href='user/addUserPage'">가입</button>
			
			<div id="g_id_onload"
			     data-client_id="137777584383-hm25lph1vr3erm1jqv9rgb8cmmjl16j9.apps.googleusercontent.com"
			     data-login_uri="https://your.domain/your_login_endpoint"
			     data-context="signup">
			</div>
  		<div class="g_id_signin" data-type="standard"></div>
		</c:if>	
		
		<c:if test="${not empty sessionScope.dbUser}">
			<button type="button" id="logout" class="btn btn-light" onclick="userLogout()">로그아웃</button>
			<button type="button" id="getUser" class="btn btn-light">계정설정</button>
		</c:if>
		
	</form>
	
<!-- 기능 버튼 function Button -->
	<form class="funcBtn">	
		<button type="button" id="order" class="btn btn-light" onclick="order">주문</button>
		<button type="button" id="ecoMoon" class="btn btn-light" onclick="ecoMoon">달적립</button>
		<button type="button" id="coupon"	class="btn btn-light" onclick="coupon">쿠폰</button>
		<button type="button" id="findStore"	class="btn btn-light" onclick="findStore">매장찾기</button>
		<button type="button" id="newNews"	class="btn btn-light" onclick="newNews">새소식</button>
		<c:if test="${dbUser.userId == 'admin'}">
			<div>
				<button type="button" id="admin" class="btn btn-light" onclick="admin">관리자</button>
			</div>
		</c:if>
	</form>

<!-- End Contents -->	

<!-- Site info -->	
	<%@ include file ="../main/layouts/footer.jsp" %>	
	
</body>
</html>