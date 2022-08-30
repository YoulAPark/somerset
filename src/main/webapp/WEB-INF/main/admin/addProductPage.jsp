<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<!-- Bootstrap meta name 추가 -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<title> addProduct </title>
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

<!-- Navigation -->
	<%@ include file ="../layouts/header.jsp" %>

<!-- Contents -->

<form class="inputprod col-5 mx-auto">	
	
		<label for="basic-url" class="form-label">상품추가</label>	
		
		<div class="input-group mb-3 col-6 mx-auto">
		  <span class="input-group-text">상품명</span>
		  <input type="text" name="prodName" class="form-control" placeholder="Product Name" value="${product.prodName}">
		</div>
		
		<div class="input-group mb-3 col-6 mx-auto">
		  <span class="input-group-text">상품설명</span>
		  <input type="text" name="prodDetail" class="form-control" placeholder="Product Detail" value="${product.prodDetail}">
		</div>
		
		<div class="input-group mb-3 col-6 mx-auto">
		  <span class="input-group-text">상품가격</span>
		  <input type="text" name="prodPrice" class="form-control" placeholder="Product Price" value="${product.prodPrice}">
		</div>
				
		<!-- 파일이미지 업로드시 필요. 차후 사용시 disabled 제거 -->
		<div class="mb-3 ">
		  <label for="formFile" class="form-label">파일 선택</label>
		  <input class="form-control" type="file" id="formFile" disabled>
		</div>
				  
		<div class="d-grid gap-2">
			<button class="btn btn-dark" type="submit" id="submit">저장</button>
		</div>
		
</form>	

<!-- Site info -->	
	<%@ include file ="../layouts/footer.jsp" %>	
	
<script>

	$(function() {
		$("#submit").on("click", function(){
			submit();
		});
	});
	
	function submit(){
		
		var prodName=$("input[name='prodName']").val();
		var prodDetail=$("input[name='prodDetail']").val();
		var prodPrice=$("input[name='prodPrice']").val();

		alert("prodName : "+prodName)
		alert("prodDetail : "+prodDetail)
		alert("prodPrice : "+prodPrice)
		
		$("form").attr("method", "POST").attr("action" , "/admin/addProduct").submit();
	}
</script>
	
	<!-- Bootstrap -->
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>

</body>
</html>