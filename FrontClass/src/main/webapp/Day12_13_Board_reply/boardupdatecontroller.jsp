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

<!-- 1.데이터 요청하기 -->
	<%
		request.setCharacterEncoding("EUC-KR"); // 요청된 데이터의 한글이 있을경우 
		
		int bno = Integer.parseInt(request.getParameter("bno")); 	// 게시물 번호
		String btitle = request.getParameter("btitle");				// 게시물 제목 
		String bcontents = request.getParameter("bcontents");		// 게시물 내용
	%>
	<!-- 2.요청된 데이터 객체화 -->
	<%
		Board board = new Board( btitle , bcontents ); // 조회수는 0 
	%>
	<!-- 3.DB에 저장하기  -->
	<%
		BoardDao boardDao = BoardDao.getinstance();
		int result =  boardDao.bupdate(bno, board);
	%>
	<!-- 4.다른페이지로 이동 -->
	<%
		if( result == 1 ) response.sendRedirect("boardlist.jsp");
		
	%>

</body>
</html>