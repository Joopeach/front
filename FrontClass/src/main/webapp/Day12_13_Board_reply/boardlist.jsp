<%@page import="Dto.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Dao.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3> �۸�� ������ </h3>
	<a href="boardwrite.jsp"> <button> �۾��� </a> </button>
	<table>
		<tr>
			<th> ��ȣ </th>
			<th> ���� </th>
			<th> �ۼ��� </th>
			<th> �ۼ��� </th>
			<th> ��ȸ�� </th>
		</tr>
		<%
			BoardDao boardDao = BoardDao.getinstance();
		
			ArrayList<Board> boards = boardDao.blist();
	
			for( Board board : boards  ){
		%>
		<tr> <!-- for�� �̿��� ��� -->
			<td><%=board.getBno() %></td>
			<td><a href="boardview.jsp?bno=<%=board.getBno() %>"><%=board.getBtitle() %> </a></td>
			<!-- for�� �̿��� ��� -->
			<td><%=board.getBwriter() %></td>
			<td><%=board.getBdate() %></td>
			<td><%=board.getBcount() %></td>
		</tr>	
		
		<%
		}
		%>
	</table>

</body>
</html>