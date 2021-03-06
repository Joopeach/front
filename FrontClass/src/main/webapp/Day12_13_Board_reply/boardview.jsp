<%@page import="Dto.Reply"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Dto.Board"%>
<%@page import="Dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		// 1. 매개변수 요청 [ 기본타입 : String ] 
		int bno = Integer.parseInt(request.getParameter("bno"));
					// interger.parseint( 문자열 ) : 문자열 => 정수형 
							
				// 해당 페이지 요청	되었을경우 조회수 증가
				BoardDao boardDao = BoardDao.getinstance();
				boardDao.bcountup(bno);
				
		// 2. 게시물번호에 해당하는 db 검색해서 출력 
		Board board  = boardDao.bview(bno);
		
	%>
	<a href="boardlist.jsp"><button>목록</button> </a>
	<a href="boardupdate.jsp?bno=<%=bno%>"><button>수정</button> </a>
	<a href="boarddeletecontroller.jsp?bno=<%=bno%>"><button>삭제</button> </a>
	<table border="1">
		<tr>
			<td colspan="3"> 제목 :  <%=board.getBtitle() %> </td>
		</tr>
		
		<tr>
			<td> 작성자 :  <%=board.getBwriter() %> </td> 
			<td> 작성일 : <%=board.getBdate() %> </td> 
			<td> 조회수 : <%=board.getBcount() %> </td>
		</tr>
		
		<tr>
			<td colspan="3"> 내용 : <%=board.getBcontents() %> </td> 
		</tr>

	</table>
	
	<!--  댓글  -->
	 <hr>
	<h4> 댓글 쓰기 </h4>
	<form action="replywritecontroller.jsp" method="post">
		
		<table>
			<tr>
				<th>작성자</th> <th>내용</th> <td></td> 
			</tr>
			<tr>
				<td> <input type="text" name="rwriter" size="10"> </td>
				<td> <textarea rows="" cols="50" name="rcontents"></textarea> </td>
				<td> <input type="submit" value="등록"> </td>
			</tr>
		</table>
		<!-- 현재 게시물번호 [댓글 식별용] --> <input type="hidden" value="<%=bno%>" name="bno">
		
	</form>
	
	 <hr>
	 <br>
	 <h4> 댓글 목록 </h4>
	 <table>
	 	<tr>
	 		<td>작성자</td>	<td>댓글내용</td>		<td>작성일</td>
	 	</tr>
	 </table>
	
</body>
</html>