<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<!-- Bootstrap meta name 추가 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

<title> 기본 JSP </title>

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
			$("#addProductPage").on("click", function(){
				addProductPage();
			});
		});
		
		$(function() {
			$("#listProduct").on("click", function() {
				listProduct();	
			});
		});
		
		function addProductPage(){
			self.location = "/admin/addProductPage";
		}
		
		function listProduct(){
			self.location = "/order/listProduct";
		}

</script>

</head>

<body>


<!-- Navigation -->
	<%@ include file ="../layouts/header.jsp" %>
	
<!-- Contents -->
<!-- 기능 버튼 function Button -->
	<form class="funcBtn">	
		<button type="button" id="addProductPage" class="btn btn-light" onclick="addProductPage">상품추가</button>
		<button type="button" id="listProduct" class="btn btn-light" onclick="listProduct">상품관리</button>
	</form>
<!-- Site info -->	
	<%@ include file ="../layouts/footer.jsp" %>	
	
</body>
</html>