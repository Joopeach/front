<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="Dao.NoticeDao"%>
<%@page import="Dto.NoticeDto"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		// ��α��� ������ ȣ�� �Ұ� 
		String loginid = (String)session.getAttribute("loginid");
		if(loginid == null ){
			PrintWriter printWriter = response.getWriter();
			printWriter.println("<script>");
			printWriter.println("alert('�α����� �ۼ� �����մϴ�')");
			printWriter.println("location.href='../User/login.jsp'");
			printWriter.println("</script>");
		}
	%>

	<%
		// JSP ���� ���ε� �ϱ� [ ���� --> ���� ]
		// 1. COS ���̺귯�� �߰�
		
		// 2. ���ε� �� ������ ������ ���� ��� ����
		String realFolder = "C:/Users/User/git/Joopeach/JAVAFX_class/src/main/webapp/upload";
	
		int �뷮=
		
		// 3. ���� ��û Ŭ����
		MultipartRequest multipartRequest = new MultipartRequest( request , realFolder,  1024*1024*10 , "UTF-8", new DefaultFileRenamePolicy());
																//1. ��û���, 2.������ ,  3.�����ִ�뷮[10mb], 4.���ڵ�Ÿ�� 5. ����[ ������ �̸��� ���� ��� ���ϸ�ڿ� ���� �ٿ��ֱ�]
																	// [ bit -> byte -> kb -> mb]
		// 4. form �±� �Ӽ� enctype="multipart/form-data"
		
		String ntitle = multipartRequest.getParameter("title");
		String ncontents = multipartRequest.getParameter("contents");
		String nfile = multipartRequest.getFilesystemName("file");
									//getFilesystemName : ÷�����Ͽ� �ִ� ���ϸ� ��û
	%>

	<%
		//jsp �±� :java ��Ʈũ��Ʈ��
		
	
		/* String ntitle = request.getParameter("title");
		String ncontents = request.getParameter("contents");
		String nfile = request.getParameter("file"); */
		
		//��ü
		NoticeDao noticeDto = new NoticeDto(ntitle, ncontents, "���缮", 0 , nfile);
		
		// DB
		NoticeDao noticeDao = NoticeDao.getinstance();
		
		int result = noticeDao.noticewrite(noticeDto);
		
		if(result == 1){
			printWriter printWriter = response.getWriter();
			printWriter.println("<script>");
			printWriter.println("alert('�� �ۼ� ���')");
			printWriter.println("location.href='boardlist.jsp'");
			printWriter.println("</script>");
		}
		else{
			PrintWriter printWriter = response.getWriter();
			printWriter.println("<script>");
			printWriter.println("alert('�� �ۼ� ����[�����ڿ��� ����]')");
			printWriter.println("location.href='boardwrite.jsp'");
			printWriter.println("</script>");
		}
	%>

</body>
</html>