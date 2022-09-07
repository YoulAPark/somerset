<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<!-- Bootstrap meta name 추가 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

<title> listProduct.jsp </title>

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
	
	function getProductList(prodNo) {

		$.ajax({
					url : "/admin/getProductList/"+prodNo
				,	method : "GET"
				,	dataType : "JSON"
				,	headers : {
						"Accept" : "application/json" ,
						"Content-Type" : "application/json"
					}
				,	success : function(JSONData, status) {
						$('#prodNo').val(JSONData.prodNo);
						$('#prodName').val(JSONData.prodName);
						$('#prodDetail').val(JSONData.prodDetail);
						$('#prodPrice').val(JSONData.prodPrice);
					}
				});
	}
	
	function updateProduct() {
	
		var prodNo = $("input[name='prodNo']").val();
		var prodName = $("input[name='prodName']").val();
		var prodDetail = $("input[name='prodDetail']").val();
		var prodPrice = $("input[name='prodPrice']").val();
		
		$.ajax({
				url : "/admin/json/updateProduct/"
			,	method : "POST" 
			,	dataType : "JSON" 
			,	contentType : "application/json"
			,	data : JSON.stringify({
						"prodNo" : prodNo
					,	"prodName" : prodName
					,	"prodDetail" : prodDetail
					,	"prodPrice" : prodPrice
			})
			,	success : function(Data, status) {
					$('#prodNo').val(Data.prodNo);
					$('#prodName').val(Data.prodName);
					$('#prodDetail').val(Data.prodDetail);
					$('#prodPrice').val(Data.prodPrice);
					location.reload();
			}
		});
		
	}

</script>

</head>

<body>

<!-- Navigation -->
	<%@ include file ="../layouts/header.jsp" %>

<!-- Contents -->

	<form id="updateProd">
	
		<table class="table table-hover table-bordered caption-top">
			<caption>상품목록</caption>
	
				<thead>
					<tr class="table-info">
						<th scope="col">상품번호</th>
						<th scope="col">상품명</th>
						<th scope="col">상품설명</th>
						<th scope="col">상품가격</th>
						<th scope="col">수정</th>
						<th scope="col">삭제</th>
						</th>
					</tr>
				</thead>
	 	
		 	
		 		<tbody>
					<c:forEach items="${product.product}" var="product">
					<input type="hidden" name="test" value="${product.PROD_NO}"></input>
						<tr>						
							<td name="prodNo">${product.PROD_NO}</td>
							<td>${product.PROD_NAME}</td>
							<td>${product.PROD_DETAIL}</td>
							<td>${product.PROD_PRICE}</td>	
							<td><button type="button" value="${product.PROD_NO}" class="btn btn-outline-dark btn-sm" onclick="getProductList(${product.PROD_NO})" data-bs-toggle="modal" data-bs-target="#getProductList">수정</button></td>						
							<td><button type="button" class="btn btn-outline-danger btn-sm">삭제</button></td>
						</tr>
					</c:forEach>
				</tbody>
						
		</table>
	</form>		
	
	<!-- Modal -->
	
	<div class="modal fade" id="getProductList" tabindex="-1" aria-labelledby="#getProductListLabel" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="getProductListModal">상품수정</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      
	      <div class="modal-body">
	        <form>
				<div class="mb-3">
					<label for="recipient-name" class="col-form-label">상품명</label>
					<input type="text" class="form-control" id="prodName" name="prodName">
				</div>
				<div class="mb-3">
					<label for="recipient-name" class="col-form-label">상품설명</label> 
					<input type="text" class="form-control" id="prodDetail"	name="prodDetail">
				</div>
				<div class="mb-3">
					<label for="recipient-name" class="col-form-label">상품가격</label>
					<input type="text" class="form-control" id="prodPrice" name="prodPrice">	
				</div>
					<input type="hidden" id="prodNo" name="prodNo">
			</form>
	      </div>
	      
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
	        <button type="button" value="${product.PROD_NO}" data-bs-dismiss="modal" class="btn btn-primary" onclick="updateProduct(${product.PROD_NO})">수정</button>
	      </div>
	    </div>
	  </div>
	</div>
	

<!-- Site info -->	
	<%@ include file ="../layouts/footer.jsp" %>	
	
</body>
</html>