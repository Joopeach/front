<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

	<style type="text/css">
	
		/* 레이아웃 */
		*{margin: 0; padding:0;}
		header{height: 150px;}
		.box{width: 1100px; margin: 0 auto;} /*박스는 포털사이트에 보이는 전체 화면 권*/
		#main_image{height:200px;}	
		aside{width: 250px; height: 300px; float:left; }
		#main{width: 846px; height: 300px; float: right;}
		footer{height: 300px; clear: both; #05354e; color: white; }
		
		/* 헤더 */
		#logo{float: left; margin: 40px 0 0 20px;}
		#logo img{width: 100px;}
		
		li{list-style-type: none;}
		#menu{float: right; text-align:right; margin-right: 20px;}
		#menu li{display: inline-block;}
			/* inline : 위아래 높이/마진 X */
		#top_menu li {margin: 30px 0 0 10px;}
		#main_menu li{ margin: 40px 0 0 100px; font-weight: bold; font-size: 20px;}
		
		/* 메인 이미지 */
		#main_image{
			height: 300px;
			background-image: url("main_image.jpg");
			background-repeat: no-reapeat;
			background-position: top center;
		}
		
		/* 사이드바 */
		aside. title1{ padding: 10px; background-color:red; color: white; font-size: 20px;}
		aside. comment{ padding: 10px; line-height: 150%;}
		aside .search input{ width: 150px; height: 30px; border: solid 1px black;}
		aside .search button{ padding: 8px; margin-left: 10px; border: solid 1px black;}	
		aside .title2{
			margin-top: 20px;
			pause: 12px;
			border-top: solid 2px black;
			border-bottom: solid 1px black;
			font-size: 20px;
		}
		aside .list{margin: 20px 0px;}
		aside .list li{margin: 10px;}
		aside .ripple{padding: 15px;}
		aside .ripple h2{font-size: 20px; margin: 10px 0px;}
		aside .ripple li{margin-top: 5px;}
		
		/* 푸터 */
		#bottom_menu ul{padding:20px 0 0 100px; font-weight: bold;}
		#bottom_menu li{display:inline; margin-right: 50px;}
		footer .items{float: left; margin:40px 0 0 100px;}
		footer h3{color:orange;}
		footer .items ul{margin-top:20px;}
		footer .items li{margin-top: 5px;}
		
	</style>
</head>
<body>
	
	<header>
		<div class="box">
		
			<div id="logo">
				<img alt="" src="logo.png">
			</div>
			
			<div id="menu">
				<ul id="top_menu">
					<li> 유재석님 </li>
					<li> 로그아웃 </li>
					<li> 회원정보 </li>
				</ul>
				
				<ul id="main_menu">
					<li> Home </li>
					<li> 전체상품 </li>
					<li> 게시판 </li>
					<li> 고객센터 </li>
				</ul>
			</div>
			
		</div>
	</header>		
	<section id="main_image">
		메인 이미지
	</section>	
	<div class="box">
		<aside>
			<h2 class="title1"> The 나이키 </h2>
			<p class="comment"> 안녕하세 요 나이키 정보를 공유하고 소통하는 공간입니다 </p>
			
			<div class="search">
				<input type="text"><button>검색</button>
			</div>
			
			<h2 class="title2"> 나이키 카테고리 </h2>
				<ul class="list">
					<li> 의류 </li>
					<li> 신발 </li>
					<li> 가방 </li>
				</ul>
				
			<div class="ripple">
					<h2> 최근 댓글 </h2>
						<ul>
							<li> 좋습니다 </li>
							<li> 별로네요 </li>
							<li> 별로네요 </li>
						</ul>
			</div>
				
		</aside>
		<section id="main">
				<%@include file="/Day06/day06_6.jsp" %>
		</section>
	</div>
	<footer>
		<div class="box">
		</div>
	</footer>
</body>
</html>