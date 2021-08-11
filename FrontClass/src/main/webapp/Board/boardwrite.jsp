<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%@include file="menu.jsp" %>
				<!-- container width: 1200px -->
	<div class="container" style="width:900px;">
	
		<h3> 글 작성 </h3>
		<form method="post" action="boardwriteController.jsp" enctype="multipart/form.data">
			<div class="mb-3">
				<label>내용</label>
				<textarea rows="5" cols="" style="resize: none;" class="form-control" name="contents"> </textarea>
			</div>
			
			<div class="mb-3">
			<label>내용</label>
			<textarea rows="5" cols="" style="resize:none;" class="form-control" name="contents"></textarea>
			</div>
			
			<div style="margin-top: 30px;">
				<label>첨부파일</label>
				<input type="file" class="form-control" name="file">
			</div>
			
			<div>
				<input type="submit" value="등록" class="form-control pull-right" style="width: 100px;">
			</div>
		</form>
	</div>
	
	<script type="text/javascript"> <!-- js[javascript] 유효성 검사 -->
		function boardcheck() {
				//boardcheck 메소드 정의
				if( boardform.title.value.length == 0){
					alert("제목을 입력해주세요"); //메시지 창 띄우기
					return false;
				}
				if(boardform.contents.value.length ==0){
					alert("내용을 입력해주세요"); //메시지 창 띄우기
					return false; 
				}
		}
	
	
	</script>

</body>
</html>