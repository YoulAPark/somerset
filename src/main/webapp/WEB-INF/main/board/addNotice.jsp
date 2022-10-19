<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title> addNotice.jsp </title>
<!-- 글쓰기 진행시 사용 할 예정 / BootStratp5와 충돌있으므로 참고 -->

<!-- CDN Script Start -->
	
<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>


	
<!-- CDN Script End -->	

<!-- CSS style Start -->
<style>
	
</style>
<!-- CSS style End -->

<script>

	$(function() {
		
		$('#summernote').summernote({
				height : 300
			,	minHeight : null
			,	maxHeight : null
			,	focus : true
			,	lang : "ko-KR"
			,	placeholder : '최대 2048자 까지 쓸 수 있습니다.'
		});
		
	});

/* //서머노트에 text 쓰기
$('#summernote').summernote('insertText', 써머노트에 쓸 텍스트);


// 서머노트 쓰기 비활성화
$('#summernote').summernote('disable');

// 서머노트 쓰기 활성화
$('#summernote').summernote('enable');


// 서머노트 리셋
$('#summernote').summernote('reset');


// 마지막으로 한 행동 취소 ( 뒤로가기 )
$('#summernote').summernote('undo');
// 앞으로가기
$('#summernote').summernote('redo'); */

</script>

</head>

<body>


<!-- Navigation -->
	<%@ include file ="../layouts/header.jsp" %>
	
<!-- Contents -->
<!-- form 안에 에디터를 사용하는 경우 (보통 이경우를 많이 사용하는듯)-->
	
	<form method="post">
	  <textarea id="summernote" name="editordata"></textarea>
	</form>

<!-- Site info -->	
	<%@ include file ="../layouts/footer.jsp" %>	
	
</body>
</html>