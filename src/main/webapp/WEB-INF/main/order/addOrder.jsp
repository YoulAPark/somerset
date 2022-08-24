<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<!-- Bootstrap meta name 추가 -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<title> addOrder.jsp </title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

<!-- CDN Script Start -->
	
	<!-- jQuery -->	
	<script defer src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
	
	<!-- SweetAlert -->
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>	
	
<!-- CDN Script End -->	

<style>
	
</style>

</head>

<body>

	<form>
		<div> 구성 </div>
		<div> 상단탭 : 신메뉴 / 커피 / 콜드브루 / 논커피 </div>
		<div> 하단탭 : 상품1(상품명, 상품가격) </div>
		<div> </div>
		<div> 하단탭 클릭시 메뉴상세 페이지로 넘어감 </div>
	</form>
	
	<form class="orderBtn">
		<button type="button" id="order" class="btn btn-light" onclick="order">주문</button>
	</form>
	
<script>

	<!--
	$(function() {
		$("#order").on("click", function(){
			order();
		});
	});

	function order(){
		self.location = "/order/addOrder";
	}
	 -->
	 
</script>
	
	<!-- Bootstrap -->
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>

</body>
</html>