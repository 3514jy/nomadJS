<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>center/fdeletePro.jsp</title>
</head>
<body>
<%
//request 태그파라미터 가져오기 num 
int num=Integer.parseInt(request.getParameter("num"));

// BoardDAO 객체생성 
BoardDAO boardDAO=new BoardDAO();
//  deleteBoard(num) 메서드 호출
boardDAO.deleteBoard(num);

// notice.jsp 이동 
response.sendRedirect("fnotice.jsp");

%>
</body>
</html>