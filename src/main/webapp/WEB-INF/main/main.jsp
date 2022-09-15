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

	function order(){
		self.location = "/order/getProduct";
	}
	
	function admin(){
		self.location = "/admin/adminMain";
	}
	
	function userLogin() {
		console.log("?");
		self.location = "/user/loginView";
	}

</script>

</head>

<body>

<!-- Navigation -->
	<%@ include file ="../main/layouts/header.jsp" %>
${dbUser.userId}님
<!-- Start Contents -->
<!-- 회원 버튼 user Button -->
	<form class="userBtn">	
		<button type="button" id="login" class="btn btn-light" onclick="userLogin()">로그인</button>	
		<button type="button" id="logout" class="btn btn-light" onclick="logout">로그아웃</button>
		<button type="button" id="join" class="btn btn-light" onclick="location.href='user/addUserPage'">가입</button>
	</form>
	
<!-- 기능 버튼 function Button -->
	<form class="funcBtn">	
		<button type="button" id="order" class="btn btn-light" onclick="order">주문</button>
		<button type="button" id="ecoMoon" class="btn btn-light" onclick="ecoMoon">달적립</button>
		<button type="button" id="coupon"	class="btn btn-light" onclick="coupon">쿠폰</button>
		<button type="button" id="findStore"	class="btn btn-light" onclick="findStore">매장찾기</button>
		<button type="button" id="newNews"	class="btn btn-light" onclick="newNews">새소식</button>
		<div>
			<button type="button" id="admin" class="btn btn-light" onclick="admin">관리자</button>
		</div>
	</form>

<!-- End Contents -->	

<!-- Site info -->	
	<%@ include file ="../main/layouts/footer.jsp" %>	
	
</body>
</html>