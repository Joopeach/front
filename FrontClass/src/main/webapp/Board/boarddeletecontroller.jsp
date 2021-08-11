<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		request.setCharacterEncoding("UTF-8");
		int nno = INteger.parseInt(request.getParameter("nno"));
		
		NOticeDao noticeDao = NoticeDao.getinstance();
		int result = noticeDao.getnoticedol(nno);
		if(result == 1) {
			
			// 게시물 삭제시 업로드 파일 삭제
			File file = new File("C:/")
					printWriter.println("<script>");
			printWriter.println("alert('글 삭제 완료')");
			printWriter.println("location.href='boardlist.jsp'");
			printWriter.println("</script>");
		}else{
			PrintWriter printWriter = response.getWriter();
			printWriter.println("<script>");
			printWriter.println("alert('글 삭제 실패[관리자에게문의]')");
			printWriter.println("location.href='boardlist.jsp'");
			printWriter.println("</script>");
		}
		
	%>

</body>
</html>