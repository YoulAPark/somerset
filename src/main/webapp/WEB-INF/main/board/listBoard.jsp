<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<!-- Bootstrap meta name 추가 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

<title> listNotice.jsp </title>

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
	 
/* 	$(function() {
		$(".nav-link").on("click", function() {
			var name = $(this).attr('name');	
			$("#resultLayout").load("/board/"+name);			
		});
	}); */
	
	/* $(function() {
		
		$(".nav-link").on("click", function() {
			var category = $(this).attr('id');
			var name = $(this).attr('name');
			
			$.ajax({
					url : "/board/getBoardCategory/"+category
					,	method : "GET"
					,	data : "JSON"
					,	headers : {
								"Accept" : "application/json; charset=utf-8"
							,	"Content-Type" : "application/json; charset=utf-8"
						}
					,	success : function() {
							$("#resultLayout").load("/board/"+name);
						}
					,	error : function(request, error) {
							alert("error")
							console.log("code : "+request.status)
							console.log("message : "+request.responseText)
							console.log("error : "+error)
					}
			});
				
			
		});
		
	}); */
	
	function tab(type) {
		
		if (type==1) {
			var name = "notice"
			$("#resultLayout").load("/board/"+name);		
			
		} else if (type==2) {
			var name = "event"
			$("#resultLayout").load("/board/"+name);
			
		} else if (type==3) {
			var name = "faq"
			$("#resultLayout").load("/board/"+name);
			
		}
	}
	
</script>

</head>

<body>

<!-- Navigation -->
	<%@ include file ="../layouts/header.jsp" %>
	
<!-- Contents -->

	<ul class="nav nav-pills nav-justified col-9 mx-auto">
		<li class="nav-item">
			<a class="nav-link active" aria-current="page" id="1" name="notice" onclick="tab(1)">공지사항</a>
		</li>
		<li class="nav-item">
			<a class="nav-link" id="2" name="event" onclick="tab(2)">이벤트</a>
		</li>
		<li class="nav-item">
			<a class="nav-link"	id="3" name="faq" onclick="tab(3)">FAQ</a>
		</li>
	</ul>
	
	<div id="resultLayout"></div>

<!-- Site info -->	
	<%@ include file ="../layouts/footer.jsp" %>	
	
</body>
</html>