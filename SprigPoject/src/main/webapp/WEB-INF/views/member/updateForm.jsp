<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/updateFome.jsp</title>
</head>
<body>
<%
// String id=(String)session.getAttribute("id");
//자바파일 객체생성(기억장소할당)하고 getMember(id)메서드 호출
// MemberDAO memberDAO=new MemberDAO();
// MemberDTO memberDTO=memberDAO.getMember(id);
// MemberDTO memberDTO=(MemberDTO)request.getAttribute("memberDTO");

// model.addAttribute("memberDTO", memberDTO);
	%>
<form action="${pageContext.request.contextPath}/member/updatePro" method="post">
아이디 : <input type="text" name="id" value="${sessionScope.id }" readonly><br>
비밀번호 : <input type="password" name="pass"><br>
이름 : <input type="text" name="name" 
      value="${memberDTO.name }"><br>
<input type="submit" value="회원정보수정">
</form>	
	
</body>
</html>
