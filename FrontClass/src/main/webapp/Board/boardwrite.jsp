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
	
		<h3> �� �ۼ� </h3>
		<form method="post" action="boardwriteController.jsp" enctype="multipart/form.data">
			<div class="mb-3">
				<label>����</label>
				<textarea rows="5" cols="" style="resize: none;" class="form-control" name="contents"> </textarea>
			</div>
			
			<div class="mb-3">
			<label>����</label>
			<textarea rows="5" cols="" style="resize:none;" class="form-control" name="contents"></textarea>
			</div>
			
			<div style="margin-top: 30px;">
				<label>÷������</label>
				<input type="file" class="form-control" name="file">
			</div>
			
			<div>
				<input type="submit" value="���" class="form-control pull-right" style="width: 100px;">
			</div>
		</form>
	</div>
	
	<script type="text/javascript"> <!-- js[javascript] ��ȿ�� �˻� -->
		function boardcheck() {
				//boardcheck �޼ҵ� ����
				if( boardform.title.value.length == 0){
					alert("������ �Է����ּ���"); //�޽��� â ����
					return false;
				}
				if(boardform.contents.value.length ==0){
					alert("������ �Է����ּ���"); //�޽��� â ����
					return false; 
				}
		}
	
	
	</script>

</body>
</html>