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
	
	// SummerNote 자체 Function
	$(function() {
		$('#summerNote').summernote({
				placeholder : "내용을 작성해주세요"
			,	lang : 'ko-KR'	
			,	height : 400
			,	maxHeight : 400
			,	focus : true
		});
	});
	
	
	// 저장 Click Event
	$(function() {
		$('#addBoard').on("click", function(){
			saveBoard();
		});
	});

	
	function saveBoard() {

		var boardCategory = $("input[name='boardCategory']").val();
		var boardTitle = $("input[name='boardTitle']").val();
		
		// summerNote 글 내용 정규화 작성		
		var summerNoteContent = $('#summerNote').summernote('code'); // SummerNoteContent 코드
		var content = summerNoteContent.replace(/(<br>|<br\/>|<br \/>)/g, '\r\n'); // <br>태그
		var boardContent = content.replace(/<(\/)?([a-zA-Z]*)(\s[a-zA-Z]*=[^>]*)?(\s)*(\/)?>/ig, ""); //</p>태그
		
		$.ajax({
			url : "/board/json/addBoard/"
			,	method : "POST" 
			,	dataType : "JSON" 
			,	contentType : "application/json"
			,	data : JSON.stringify({
						"boardCategory" : boardCategory
					,	"boardTitle"	: boardTitle
					,	"boardContent"	: boardContent
			})
			,	success : function() {
					location.href = "/board/listBoard";
				}, error : function() {
					console.log("실패")
				}
		});
		 
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
			<input type="text" id="boardTitle" name="boardTitle" class="form-control" placeholder="제목을 입력해주세요">
		</div>
		
		<div id="summerNote" name="boardContent"></div>
		
		<div class="d-md-flex justify-content-md-end">
			<button type="button" id="addBoard" class="btn btn-light" onclick="addBoard">저장</button>
		</div>
		
		<!-- boardCategory 불러오기 -->
		<input type="hidden" id="boardCategory" name="boardCategory" value="${boardCategory}">

	</form>
	
<!-- Site info -->	
	<%@ include file ="../layouts/footer.jsp" %>	
	
</body>
</html>