<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<!-- Bootstrap meta name 추가 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

<title> addBoard.jsp </title>

<!-- CDN Script Start -->
	
	 <!--  jQuery, bootstrap -->
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>

    <!-- summernote css/js-->
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>

	
<!-- CDN Script End -->	

<!-- CSS style Start -->
<style>
	
</style>
<!-- CSS style End -->

<script>
	
	$(function() {
		$('#summerNote').summernote({
				placeholder : "내용을 작성해주세요"
			,	lang : 'ko-KR'	
			,	height : 400
			,	maxHeight : 400
			,	focus : true
		});
	});
	

	$(function() {
		$('#addBoard').on("click", function(){
			saveBoard();
		});
	});
	
	function saveBoard() {
		
		var boardTitle = $('#boardTitle').val();
		var summernoteContent = $('#summerNote').summernote('code');        //썸머노트(설명)
		console.log("boardTitle : "+boardTitle)
        console.log("summernoteContent : " + summernoteContent);
		
	}
	
	
</script>

</head>

<body>

<!-- Navigation -->
	<%@ include file ="../layouts/header.jsp" %>
	
<!-- Contents -->
	<form class="col-9 mx-auto">
		<h1>summerNote</h1>
		
		<div class="mb-3">
			<input type="text" id="boardTitle" class="form-control" placeholder="제목을 입력해주세요">
		</div>
		
		<div id="summerNote"></div>
		
		<div class="d-md-flex justify-content-md-end">
			<button type="button" id="addBoard" class="btn btn-light" onclick="addBoard">저장</button>
		</div>
		
	</form>
	
<!-- Site info -->	
	<%@ include file ="../layouts/footer.jsp" %>	
	
</body>
</html>