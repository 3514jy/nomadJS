<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/default.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/subpage.css" rel="stylesheet" type="text/css">
<!--[if lt IE 9]>
<script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/IE9.js" type="text/javascript"></script>
<script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/ie7-squish.js" type="text/javascript"></script>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js" type="text/javascript"></script>
<![endif]-->
<!--[if IE 6]>
 <script src="../script/DD_belatedPNG_0.0.8a.js"></script>
 <script>
   /* EXAMPLE */
   DD_belatedPNG.fix('#wrap');
   DD_belatedPNG.fix('#main_img');   

 </script>
 <![endif]-->
 <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
 <script type="text/javascript">
 	function CheckId() {
// 		alert("함수호출");
		var uID=$("input[id='uID']");
		if(uID.val()==""){
			alert("아이디 입력하세요");
			uID.focus();
			return false;
		}
		//창열기
		window.open("idCheck.jsp?uID="+uID.val(),"","width=500,height=300");
	}
 	
 	// <input type="button" value="dup. check" class="dup"> 클릭했을때 
 	// html 문서가 실행이 준비 되면 => 동작
 	$(document).ready(function(){	
 		// 버튼을 클릭했을때
 		$('.dup').click(function(){
//  			alert("클릭이벤트");
				// idCheck2.jsp에 아이디를 들고 가서  아이디를 중복체크 아이디 중복, 아이디 사용가능 출력
			$.ajax('idCheck2.jsp',{
				data:{uID:$('#uID').val()},
				success:function(rdata){
					//#dupdiv 대상에  가져온 값을 출력
					$('#dupdiv').html(rdata);
				}
			});	
 		});
 	});
 	
 	
 </script>
</head>
<body>
<div id="wrap">
<!-- 헤더들어가는 곳 -->
<jsp:include page="../inc/top.jsp"></jsp:include>
<!-- 헤더들어가는 곳 -->

<!-- 본문들어가는 곳 -->
<!-- 본문메인이미지 -->
<div id="sub_img_member"></div>
<!-- 본문메인이미지 -->
<!-- 왼쪽메뉴 -->
<nav id="sub_menu">
<ul>
<li><a href="#">Join us</a></li>
<li><a href="#">Privacy policy</a></li>
</ul>
</nav>
<!-- 왼쪽메뉴 -->
<!-- 본문내용 -->
<article>
<h1>Join Us</h1>
<form action="${pageContext.request.contextPath}/member/insertPro" id="join" method="post">
<fieldset>
<legend>Basic Info</legend>
<label>User ID</label>
<input type="text" name="id" class="id" id="uID">
<!-- <input type="button" value="dup. check" class="dup" onclick="CheckId()"><br> -->
<input type="button" value="dup. check" class="dup"><br>
<div id="dupdiv"></div><br>
<label>Password</label>
<input type="password" name="pass"><br>
<label>Retype Password</label>
<input type="password" name="pass2"><br>
<label>Name</label>
<input type="text" name="name"><br>
<label>E-Mail</label>
<input type="email" name="email"><br>
<label>Retype E-Mail</label>
<input type="email" name="email2"><br>
</fieldset>

<fieldset>
<legend>Optional</legend>
<label>Address</label>
<input type="text" name="address"><br>
<label>Phone Number</label>
<input type="text" name="phone"><br>
<label>Mobile Phone Number</label>
<input type="text" name="mobile"><br>
</fieldset>
<div class="clear"></div>
<div id="buttons">
<input type="submit" value="Submit" class="submit">
<input type="reset" value="Cancel" class="cancel">
</div>
</form>
</article>
<!-- 본문내용 -->
<!-- 본문들어가는 곳 -->

<div class="clear"></div>
<!-- 푸터들어가는 곳 -->
<jsp:include page="../inc/bottom.jsp"></jsp:include>
<!-- 푸터들어가는 곳 -->
</div>
</body>
</html>