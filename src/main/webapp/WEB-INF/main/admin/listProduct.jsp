<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<!-- Bootstrap meta name 추가 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

<title> listProduct </title>

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
	.table { 
			text-align : center;
			}
			
	tbody 	{
			font-weight : lighter;
			}
</style>
<!-- CSS style End -->

<script>

</script>

</head>

<body>

<!-- Navigation -->
	<%@ include file ="../layouts/header.jsp" %>

<!-- Contents -->

	<table class="table table-hover table-bordered caption-top">
		<caption>상품목록</caption>
		<div>이거잠깐확인 : ${product}</div>
		<thead>
			<tr class="table-info">
				<th scope="col">상품번호</th>
				<th scope="col">상품명</th>
				<th scope="col">상품설명</th>
				<th scope="col">상품가격</th>
			</tr>
		</thead>
		
		<tbody id="productList">
			<%-- <tr>
				<th scope="row">${product.prodNo}</th>
				<td>${product.prodName}</td>
				<td>${product.prodDetail}</td>
				<td>${product.prodPrice}</td> --%>
			</tr>
			<%-- <tr>
				<th scope="row">${product.prodNo}</th>
				<td>${product.prodName}</td>
				<td>${product.prodDetail}</td>
				<td>${product.prodPrice}</td>
			</tr>
			<tr>
				<th scope="row">${product.prodNo}</th>
				<td>${product.prodName}</td>
				<td>${product.prodDetail}</td>
				<td>${product.prodPrice}</td>
			</tr>
			<tr>
				<th scope="row">${product.prodNo}</th>
				<td>${product.prodName}</td>
				<td>${product.prodDetail}</td>
				<td>${product.prodPrice}</td>
			</tr>
			<tr>
				<th scope="row">${product.prodNo}</th>
				<td>${product.prodName}</td>
				<td>${product.prodDetail}</td>
				<td>${product.prodPrice}</td>
			</tr>
			<tr>
				<th scope="row">${product.prodNo}</th>
				<td>${product.prodName}</td>
				<td>${product.prodDetail}</td>
				<td>${product.prodPrice}</td>
			</tr>
			<tr>
				<th scope="row">${product.prodNo}</th>
				<td>${product.prodName}</td>
				<td>${product.prodDetail}</td>
				<td>${product.prodPrice}</td>
			</tr>
			<tr>
				<th scope="row">${product.prodNo}</th>
				<td>${product.prodName}</td>
				<td>${product.prodDetail}</td>
				<td>${product.prodPrice}</td>
			</tr>
			<tr>
				<th scope="row">${product.prodNo}</th>
				<td>${product.prodName}</td>
				<td>${product.prodDetail}</td>
				<td>${product.prodPrice}</td>
			</tr>
			<tr>
				<th scope="row">${product.prodNo}</th>
				<td>${product.prodName}</td>
				<td>${product.prodDetail}</td>
				<td>${product.prodPrice}</td>
			</tr>	 --%>			
		</tbody>

	</table>

<!-- Site info -->	
	<%@ include file ="../layouts/footer.jsp" %>	
	
</body>
</html>