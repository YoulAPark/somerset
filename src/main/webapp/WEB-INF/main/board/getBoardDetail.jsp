<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<!-- Bootstrap meta name 추가 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

<title> boardDetail </title>

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

	.boardTitle {
				font-size : 24px;
				font-weight : bold;
				}
				
	.boardTime {
			text-align : right;
			height : 20px;
			font-size : 12px;
			font-weight : 300;
			}

	.boardContent {
					height : 400px;
					}
			
	.moveText {
				text-align : center;
				font-weight : 300;
				}
				
	.moveContent {
					font-weight : normal;
					}
	.btn {
			text-align : right;
			}
	#btn {
			text-align : center;
			
		}
	
</style>
<!-- CSS style End -->

<script>

	function upNotice() {
		alert("upNotice")
		location.href = "/board/getBoardDetail/"+boardNo;
	}
	
	function dnNotice() {
		alert("dnNotice")
	}
	
	function updateBoard() {
		var boardNo = $("input[name='boardNo']").val();	
		location.href = "/board/updateBoard/"+boardNo;
	}
	
	function deleteBoard() {
		
	}
	
</script>

</head>

<body>

<!-- Navigation -->
	<%@ include file ="../layouts/header.jsp" %>

<!-- Contents -->

<form class="inputprod col-7 mx-auto">	
	
	<!-- boardNo, boardCategory, boardTitle, boardContent, boardTime -->
	
	<table class="table">
		<c:forEach items="${board}" var="board">
			<input type="hidden" name="boardNo" value="${board.boardNo}">
			<tr>
				<th class="boardTitle"><c:out value="${board.boardTitle}"/></th>
			</tr>
			
			<tr>
				<th class="boardTime"><c:out value="${board.boardTime}"/></th> 
			</tr>
			
			<tr>
				<td class="boardContent"><c:out value="${board.boardContent}"/></td>
			</tr>
			
		</c:forEach>
	</table>
	<c:if test="${dbUser.userId == 'admin'}">
		<div class="d-md-flex justify-content-md-end" id="btn">
			<button type="button" class="btn btn-sm" onclick="updateBoard()">수정</button>
			<button type="button" class="btn btn-sm" onclick="deleteBoard()">삭제</button>
		</div>
	</c:if>

	<table class="table">
		<c:forEach items="${board}" var="board">
			<tr class="table-secondary" onclick="upNotice()">
				<th class="col-2 moveText">윗글</th>
				<th class="col-9 moveContent">${board.boardTitle}</th>
			</tr>
			<tr class="table-secondary" onclick="dnNotice()">
				<th class="col-2 moveText">아랫글</th>
				<th class="col-9 moveContent">${board.boardTitle}</th>
			</tr>
		</c:forEach>
	</table>
	
</form>	

<!-- Site info -->	
	<%@ include file ="../layouts/footer.jsp" %>	
	
</body>
</html>