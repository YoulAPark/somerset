<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<!-- Bootstrap meta name 추가 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

<title> 

</title>

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
	.prodName-Font {
					text-align : center;
					font-weight : 500;
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
	prooduct 표시 : ${product}
	
	
	<form class="inputprod col-9 mx-auto">
	
		<div class="prodName-Font">${product.prodName}</div>
		
		<!-- ICE & HOT -->
		<div class="accordion" id="HotAndIce">
		<div class="accordion-item">
			<h2 class="accordion-header" id="panelsStayOpen-headingOne">
				<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">HOT or ICE</button>
			</h2>
			<div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingOne">
			<div class="accordion-body">
				<div class="form-check">
					<input class="form-check-input" type="radio">
					<label class="form-check-label" for="flexRadioDefault2">ICE</label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="radio">
					<label class="form-check-label" for="flexRadioDefault2">HOT</label>
				</div>
			</div>
			</div>
		</div>
		</div>
		
		<!-- SIZE -->
		<div class="accordion" id="Size">
		<div class="accordion-item">
			<h2 class="accordion-header" id="panelsStayOpen-headingOne">
				<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">SIZE</button>
			</h2>
			<div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingOne">
			<div class="accordion-body">
				<div class="form-check">
					<input class="form-check-input" type="radio">
					<label class="form-check-label" for="flexRadioDefault2">S (-500원)</label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="radio">
					<label class="form-check-label" for="flexRadioDefault2">M</label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="radio">
					<label class="form-check-label" for="flexRadioDefault2">L (+500원)</label>
				</div>
			</div>
			</div>
		</div>
		</div>	
		
		<!-- Cup Choice -->
		<div class="accordion" id="Size">
		<div class="accordion-item">
			<h2 class="accordion-header" id="panelsStayOpen-headingOne">
				<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">컵 선택 (텀블러를 픽업대에 전달해 주세요)</button>
			</h2>
			<div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingOne">
			<div class="accordion-body">
				<div class="form-check">
					<input class="form-check-input" type="radio">
					<label class="form-check-label" for="flexRadioDefault2">일회용컵 사용</label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="radio">
					<label class="form-check-label" for="flexRadioDefault2">텀블러 사용</label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="radio">
					<label class="form-check-label" for="flexRadioDefault2">매장컵 이용</label>
				</div>
			</div>
			</div>
		</div>
		</div>
		
		<div class="accordion" id="accordionExample">
		<div class="accordion-item">
			<h2 class="accordion-header" id="headingOne">
			<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">Accordion Item #1</button>
			</h2>
			<div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
				<div class="accordion-body">
					<strong>This is the first item's accordion body.</strong> It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
				</div>
			</div>
		</div>
		</div>	
		
		<div class="form-check">
			<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2">
			<label class="form-check-label" for="flexRadioDefault2">
			Default radio
			</label>
		</div>
		
		<div class="form-check">
			<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
			<label class="form-check-label" for="flexRadioDefault2">
			Default checked radio
			</label>
		</div>
		
		<div class="mb-3 form-check">
			<input type="checkbox" class="form-check-input" id="exampleCheck1">
			<label class="form-check-label" for="exampleCheck1">Check me out</label>
		</div>
	
		<button type="submit" class="btn btn-primary">Submit</button>
	
	</form>
<!-- Site info -->	
	<%@ include file ="../layouts/footer.jsp" %>	
	
</body>
</html>