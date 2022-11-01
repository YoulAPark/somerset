<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<!-- Bootstrap meta name 추가 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">

<title>listNotice.jsp</title>

<!-- CDN Script Start -->

<!-- jQuery -->
<script defer src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- SweetAlert -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<!-- Bootstrap -->
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
	integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"
	integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK"
	crossorigin="anonymous"></script>

<!-- CDN Script End -->

<!-- CSS style Start -->
<style>
	.table { 
			text-align : center;
			}
	#writing 	/* {
				float : right;
				} */
</style>
<!-- CSS style End -->

<script>

	function getBoardWrite() {
		var boardCategory = 1;
		location.href = "/board/getBoardWrite/"+boardCategory;
	}	
	
	function getBoardDetail(boardNo) {
		location.href = "/board/getBoardDetail/"+boardNo;
	}
	
</script>

</head>

<body>

	<!-- Contents Start -->
	<%-- <c:if test="${board.boardCategory == '1'}"> --%>
	
	<form class="col-9 mx-auto">
		<div>
			<!-- 테이블 -->
			<table class="table table-hover">
				
				<thead class="table-light" border="1">
					<tr>
						<th class="col-1">넘버</th>
						<th class="col-8">제목</th>
						<th class="col-3">작성일자</th>
					</tr>
				</thead>
				
				<c:forEach var="board" items="${board}">
					<tbody class="table-group-divider">
						<tr onclick="getBoardDetail(${board.boardNo})">
							<td>${board.boardNo}</td>
							<td>${board.boardTitle}</td>
							<td>${board.boardTime}</td>
						</tr>
					</tbody>
				</c:forEach>
			</table>			
			
			<div class="d-md-flex justify-content-md-end">
				<button type="button" id="writing" class="btn btn-light" onclick="getBoardWrite()">글쓰기</button>
			</div>
			
			<!-- 페이지 네비게이션 -->
			<nav aria-label="Page navigation example">
				<ul class="pagination justify-content-center">
					<a class="page-link" href="#"><span aria-hidden="true">&laquo;</span></a>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<a class="page-link" href="#"><span aria-hidden="true">&raquo;</span></a>
				</ul>
			</nav>

		</div>
		
		

	</form>

	<!-- Contents End -->

</body>
</html>
</html>