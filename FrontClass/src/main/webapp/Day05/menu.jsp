<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Menu</title>

	<style type="text/css">
	@font-face {
    font-family: 'yg-jalnan';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff') format('woff');
    font-weight: normal;
    font-style: normal;
	}
	
	*{
		font-family: "yg-jalnan";
	}
	
		#menuul{
			background-color: skyblue;
			padding: 15px;
			text-align: center;
			color: white;
		}
		.menuli{
			display: inline;
			margin-left: 20px;
		}
		a{
			color: white;
			text-decoration: none;
		}
		a:hover{
			color: orange;
			text-decoration: none;
		}
	
	</style>

</head>
<body>

	<ul id="menuul">
		<li class="menuul"> <a href="info1.jsp">회사 소개</a> </li>
		<li class="menuul"> <a href="product.jsp">제품 소개</a> </li>
		<li class="menuul"> <a href="board.jsp">고객 센터</a> </li>
		<li class="menuul"> <a href="login.jsp">로그인</a> </li>
		<li class="menuul"> <a href="signup.jsp">회원가입</a> </li>
		<li class="menuul"> <a href="direction.jsp">찾아 오시는 길</a> </li>
	</ul>

</body>
</html>