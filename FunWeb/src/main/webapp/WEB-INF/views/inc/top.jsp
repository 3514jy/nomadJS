<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header>
<%
// //세션값 가져오기
// String id=(String)session.getAttribute("id");
// if(id==null){
	//세션값 없음 로그인이 안된 상태
	%>
<!-- <div id="login"><a href="../member/login.jsp">login</a> |  -->
<!--                 <a href="../member/join.jsp">join</a></div>	 -->
	<%
// }else{
	//세션값 있음 로그인이 된 상태
	%>
<%-- <div id="login"><%=id %>님 | <a href="../member/logout.jsp">logout</a> |  --%>
<!--                              <a href="../member/update.jsp">update</a></div>	 -->
	<%
// }
%>

<c:if test="${empty sessionScope.id }">
		<div id="login"><a href="${pageContext.request.contextPath}/member/login">login</a> | 
             		   <a href="${pageContext.request.contextPath}/member/insert">join</a></div>	
</c:if>

<c:if test="${ ! empty sessionScope.id }">
	<div id="login">${sessionScope.id }님 | 
	               <a href="${pageContext.request.contextPath}/member/logout">logout</a> | 
                   <a href="${pageContext.request.contextPath}/member/update">update</a></div>
</c:if>

<div class="clear"></div>
<!-- 로고들어가는 곳 -->
<div id="logo"><img src="${pageContext.request.contextPath}/resources/images/logo.gif" width="265" height="62" alt="Fun Web"></div>
<!-- 로고들어가는 곳 -->
<nav id="top_menu">
<ul>
	<li><a href="../main/main.jsp">HOME</a></li>
	<li><a href="../company/welcome.jsp">회사소개</a></li>
	<li><a href="#">SOLUTIONS</a></li>
	<li><a href="../center/notice.jsp">CUSTOMER CENTER</a></li>
	<li><a href="#">CONTACT US</a></li>
</ul>
</nav>
</header>