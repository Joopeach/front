<%@page import="Dao.BoardDao"%>
<%@page import="Dto.Board"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<!-- 1. 데이터 요청하기 -->
	<%
		request.setCharacterEncoding("EUC-KR"); //요청된 데이터의 한글이 있을경우
		
		String btitle = request.getParameter("btitle");
		String bwriter = request.getParameter("bwriter");
		String bcontents = request.getParameter("bcontents");
		
			// 날짜
			Date date = new Date(); // 현재날짜/시간 객체
			// 날짜형식
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yy-MM-dd hh:mm:ss");
			String bdate = simpleDateFormat.format(date);
	%>
	<!-- 2.요청된 데이터 객체화 -->
	<%
		Board board = new Board(btitle, bcontents, bwriter, bdate, 0); //조회수 0
	%>
	<!-- 3.DB에 저장하기  -->
	<%
		BoardDao boardDao = BoardDao.getinstance();
		int result =  boardDao.bwrite(board);
	%>
	<!-- 4.다른페이지로 이동 -->
	<%
		if( result == 1 ) response.sendRedirect("boardlist.jsp");
		else response.sendRedirect("boardwrite.jsp");
		
	%>



</body>
</html>