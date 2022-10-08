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
	.prodName-Font	{ text-align : center; font-weight : 700; font-size: xx-large; }
	.prodDetail-Font { text-align : center; font-weigh : 500; }	
	.prodPrice-Font { text-align : center; font-weigh : 700; font-size: xx-large; }	
			
	.infor-Emo 	{
				text-align : center;
				}
				
	.hotAndIce 	{
				text-align : center;
				}
				
	.accordion-button:not(.collapsed) 	{
									    color: #141619;
									    background-color: #f8f9fa;
										}
	.prodPrice-Font {
					text-align : center;
					font-weight : 600;
					}
	.prodPrice-Button 	{
						text-align : Left;
						font-weight : 600;
						}
						
	.modal-title 	{
					text-align : center;
					font-weight : 600;
					}
					
	#card-Font 	{
				text-align : center;
				font-weight : 400;
				background-color : #2aa1fd21;
				color : #019a68;
				}
	
	#card-body-Font {
				text-align : center;
				}

	#card-header { font-weight : 600; font-size : x-large; }
		
</style>
<!-- CSS style End -->

<script>

	function order() { 
		var hotAndIce_Ck = $('input:radio[name="hotAndIce"]:checked').val();
		
		
	}
	
	$(function() {
		$("#prodSizeCk").on("click", function () {
			alert("클릭 후 시작")
	
			var get_input = $("#prodSize");
			alert("getinput : "+get_input)
			alert("타입 : "+typeof(get_input))
			alert("array 확인 : "+Array.isArray(get_input));
			
			$.each(get_input, function (index, value) {
				console.log("인덱스값 : "+index);
				console.log("value : "+value);
				
				console.log("id : "+$(value).attr("id"));
				console.log("name : "+$(value).attr("name"));
				console.log("value : "+$(value).val());
			})
			
			$(".card").on("click", function() {
				alert("card 클릭");
				var prodSize = $('#prodSizeCk').val();
				alert(prodSize)
			});
			
		});
	});
	
	/* function prodSize() {
		var prodSize = $('input[name="prodSizeCk"]').val();
		alert(prodSize)
	} */
	
	/* function prodSizeCk(type) {
		var check = type;
		console.log("check : "+check)
		
		var prodSize = check.val();
		alert(prodSize)
		
	} */
	
	
</script>

</head>

<body>

<!-- Navigation -->
	<%@ include file ="../layouts/header.jsp" %>
<!-- Contents -->

	<form class="inputprod col-9 mx-auto">
	
		<div class="prodName-Font">${product.prodName}</div>
		<div class="prodDetail-Font">${product.prodDetail}</div>
		<div class="prodPrice-Font">${product.prodPrice}원</div>
		
		<!-- Hot And Ice -->
		<div class="hotAndIce">
			<div class="btn-group" role="group" aria-label="Basic radio toggle button group">
				<input type="radio" class="btn-check" name="hotAndIce" id="hot" value="hot" autocomplete="off" checked>
				<label class="btn btn-outline-dark" for="hot">HOT</label>
				<input type="radio" class="btn-check" name="hotAndIce" id="iced" value="ice" autocomplete="off">
				<label class="btn btn-outline-dark" for="iced">ICED</label>
			</div>
		</div>
		
		<%-- <div class="row g-0">
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
		</div> --%>
		
		<div class="d-grid gap-2">
  			<button class="btn btn-dark" type="button" onclick="order()" data-bs-toggle="modal" data-bs-target="#orderDetail">모바일 오더 주문하기</button>
		</div>
		
		<!-- Modal -->
		
		<div class="modal fade" id="orderDetail" tabindex="-1" aria-labelledby="#getProductListLabel" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="getProductListModal">${product.prodName}</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      
		      <div class="modal-body">
		      	<div class="card card-body" id="card-Font">
				환경을 위해 일회용컵 사용 줄이기에 동참해 주세요
				</div>  
		        <form class="order">
		        	
		        	<!-- SIZE -->
		        	<div class="card-header bg-transparent border-success" id="card-header">SIZE</div>
			        <div class="card-group" id="card-body-Font" name="test">
						<p id="prodSize">
							<div class="card">
								<div class="card-body"> <!-- onclick="prodSizeCk(1)" -->
										
								<input id="prodSizeCk" type="text" name="prodSizeCk" value="1"/>			
								
									<h5 class="card-title">Tall</h5>
									<p class="card-text">355ml</p>								
								</div>
							</div>
							<div class="card">
								<div class="card-body"> <!-- onclick="prodSizeCk(2)" -->
								
								<input id="prodSizeCk" type="text" name="prodSizeCk" value="2">		
								
									<h5 class="card-title">Grande</h5>
									<p class="card-text">473ml</p>
								</div>
							</div>
							<div class="card">
								<div class="card-body"> <!-- onclick="prodSizeCk(3)" -->
									
								<input id="prodSizeCk" type="text" name="prodSizeCk" value="3">		
								
									<h5 class="card-title">Venti</h5>
									<p class="card-text">591ml</p>
								</div>
							</div>
						</p>
					</div>
					
					<!-- Cup Choice 9/24 수정필요-->
					<div class="card-header bg-transparent border-success" id="card-header">컵 선택</div>
					<div class="hotAndIce">
					<div>
						<p> 
							<button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#store" aria-expanded="false" aria-controls="store" onclick="prodCupCk(3)">매장컵</button>
							<button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#tumbler" aria-expanded="false" aria-controls="tumbler" onclick="prodCupCk(2)">개인컵</button>
							<button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#disposable" aria-expanded="false" aria-controls="disposable" onclick="prodCupCk(1)">일회용컵</button>
						</p>
						<div class="row" style="min-height: 100px; min-width: 450px; font-size: small">						
							<div class="col"></div>
								<div class="col">									
									<div class="collapse" id="tumbler">
										<div class="card card-body" style="width: 400px;">
										 - 주문 후, 개인컵(355ml 이상, 텀블러 등)을 픽업대에 전달해주세요.
										</div>
									</div>
									<div class="collapse" id="disposable">
										<div class="card card-body" style="width: 400px;">
										매장에서 드시는 경우 플라스틱 일회용컵 제공이 불가능하오니 매장컵을 선택해 주시기 바랍니다.
										</div>
									</div>
								</div>
							<div class="col"></div>
						</div>	
					</div>
					</div>
					
					<!-- 샷/시럽/휘핑/우유 추가 -->
					<div class="accordion accordion-flush" id="accordionFlushA">
						<div class="accordion-item">
							<h2 class="accordion-header" id="flush-headingA">
								<button class="accordion-button collapsed" id="card-header" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseA" aria-expanded="false" aria-controls="flush-collapseA">
								퍼스널 옵션
								</button>
							</h2>
						<div id="flush-collapseA" class="accordion-collapse collapse" aria-labelledby="flush-headingA" data-bs-parent="#accordionFlushA">
							<div class="accordion-body">
							<div class="card card-body">
							TIP : "원하시는 옵션이 있을 경우 옵션을 선택해주세요!"
							</div>
								<ul class="list-group list-group-flush">
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
								</ul>
							</div>
						</div>
						</div>
					</div>
						
						
						
						<input type="hidden" id="prodNo" name="prodNo">
				</form>
		      </div>
		      
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary">담기</button>
		        <button type="button" class="btn btn-primary">주문하기</button>
		      </div>
		    </div>
		  </div>
		</div>
	</form>
<!-- Site info -->	
	<%@ include file ="../layouts/footer.jsp" %>	
	
</body>
</html>