<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<!-- Bootstrap meta name 추가 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
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
	.prodName-Font	{
					text-align : center;
					font-weight : 500;
					}	
					
	.prodPrice-Font {
					text-align : center;
					font-weight : 600;
					}
	.prodPrice-Button 	{
						text-align : Left;
						font-weight : 600;
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
					<label class="form-check-label" for="flexRadioDefault2">HOT</label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="radio">
					<label class="form-check-label" for="flexRadioDefault2">ICE</label>
				</div>
			</div>
			</div>
		</div>
		</div>
		
		<!-- SIZE -->
		<div class="accordion" id="Size">
		<div class="accordion-item">
			<h2 class="accordion-header" id="panelsStayOpen-headingTwo">
				<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="true" aria-controls="panelsStayOpen-collapseTwo">SIZE</button>
			</h2>
			<div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingTwo">
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
			<h2 class="accordion-header" id="panelsStayOpen-headingThree">
				<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="true" aria-controls="panelsStayOpen-collapseThree">컵 선택 (텀블러를 픽업대에 전달해 주세요)</button>
			</h2>
			<div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingThree">
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
		
		<!-- 샷/시럽/휘핑/우유 추가 -->
		<div class="accordion accordion-flush" id="accordionFlushExample">
			<div class="accordion-item">
				<h2 class="accordion-header" id="flush-headingOne">
					<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
						샷 추가 에스프레소
					</button>
				</h2>
				<div id="flush-collapseOne" class="accordion-collapse collapse"	aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
							<label class="form-check-label" for="flexCheckDefault">샷 추가(에스프레소) (+300원)</label>
						</div>
					</div>
				</div>
			</div>
			<div class="accordion-item">
				<h2 class="accordion-header" id="flush-headingTwo">
					<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
						시럽 추가
					</button>
				</h2>
				<div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
							<label class="form-check-label" for="flexCheckDefault">바닐라시럽 추가 (+300원)</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
							<label class="form-check-label" for="flexCheckDefault">아몬드시럽 추가 (+300원)</label>
						</div>
					</div>
				</div>
			</div>
			<div class="accordion-item">
				<h2 class="accordion-header" id="flush-headingThree">
					<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
						휘핑 추가
					</button>
				</h2>
				<div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
							<label class="form-check-label" for="flexCheckDefault">휘핑 추가 (+300원)</label>
						</div>
					</div>
				</div>
			</div>
			<div class="accordion-item">
				<h2 class="accordion-header" id="flush-headingFour">
					<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFour" aria-expanded="false" aria-controls="flush-collapseFour">
						우유 추가 (50ml / S, M만 가능)
					</button>
				</h2>
				<div id="flush-collapseFour" class="accordion-collapse collapse" aria-labelledby="flush-headingFour" data-bs-parent="#accordionFlushExample">
					<div class="accordion-body">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
							<label class="form-check-label" for="flexCheckDefault">우유 추가 (+400원)</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
							<label class="form-check-label" for="flexCheckDefault">저지방 우유 변경 및 추가 (+400원)</label>
						</div>
					</div>
				</div>
			</div>
		</div> 
		
		<div class="row g-0">
			<div class="col-sm-6 col-md-8 prodPrice-Font">${product.prodPrice}원</div>
			<div class="col-6 col-md-4 prodPrice-Button">
				<button type="button" class="btn btn-outline-dark btn-sm">
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-dash-lg" viewBox="0 0 16 16">
					<path fill-rule="evenodd" d="M2 8a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11A.5.5 0 0 1 2 8Z"/>
					</svg>
				</button>
				1
				<button type="button" class="btn btn-outline-dark btn-sm">
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-lg" viewBox="0 0 16 16">
  					<path fill-rule="evenodd" d="M8 2a.5.5 0 0 1 .5.5v5h5a.5.5 0 0 1 0 1h-5v5a.5.5 0 0 1-1 0v-5h-5a.5.5 0 0 1 0-1h5v-5A.5.5 0 0 1 8 2Z"/>
					</svg>
				</button>
			</div>
		</div>
		
		<div class="d-grid gap-2">
  			<button class="btn btn-primary" type="button">모바일 오더 주문하기</button>
		</div>
	</form>
<!-- Site info -->	
	<%@ include file ="../layouts/footer.jsp" %>	
	
</body>
</html>