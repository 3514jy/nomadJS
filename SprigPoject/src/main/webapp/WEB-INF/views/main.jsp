<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>   
.popup-foot{                      
  width:100%;
  height:50px;
}
.pop-btn{ 
  display:inline-flex;            
  width:50%;                      
  height:100%;                    
  justify-content:center;         
  align-items:center;             
  float:left;                     
  color:#ffffff;                  
  cursor:pointer;                 
}
.pop-btn.confirm{                 
  border-right:1px solid #3b5fbf; 
}

/* ------------------- */

.popup-body{                
  width:100%;
  background-color:#ffffff; 
}
.body-content{              
  width:100%;
  padding:30px;             
}
.body-titlebox{             
  text-align:center;        
  width:100%;
  height:40px;
  margin-bottom:10px;       
}
.body-contentbox{           
  word-break:break-word;    
  overflow-y:auto;          
  min-height:100px;         
  max-height:200px;         
}
/* ------------------ */
.popup-head{
  width:100%;
  height:50px;  
  display:flex; 
  align-items:center;
  justify-content:center;
}
/* -------------------- */
.popup{
  width:100%;               
  max-width:400px;          
  border-radius:10px;       
  overflow:hidden;          
  background-color:#264db5; 
  box-shadow: 5px 10px 10px 1px rgba(0,0,0,.3); 
}
/* --------------------------- */
.popup-wrap{
  background-color:rgba(0,0,0,.3); 
  justify-content:center; 
  align-items:center;     
  position:fixed;         
  top:0;
  left:0;
  right:0;
  bottom:0;               
  display:none; 
  padding:15px; 
}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
    /*팔로우 버튼 클릭*/
    $(document).ready(function(){

    
    		  $("#confirm").click(function(){
    		      modalClose(); //모달 닫기 함수 호출
    		      
    		      //컨펌 이벤트 처리
    		  });
    		  $("#modal-open").click(function(){        
    		      $("#popup").css('display','flex').hide().fadeIn();
    		      //팝업을 flex속성으로 바꿔준 후 hide()로 숨기고 다시 fadeIn()으로 효과
    		  });
    		  $("#close").click(function(){
    		      modalClose(); //모달 닫기 함수 호출
    		  });
    		  function modalClose(){
    		      $("#popup").fadeOut(); //페이드아웃 효과
    		  }
    	
        
        });


</script>
</head>
<body>
<h1 id="modal-open">main.jsp</h1>
<div class="container"> 
  <div class="popup-wrap" id="popup"> 
    <div class="popup">	
      <div class="popup-head">	
          <span class="head-title">MuziMuzi</span>
      </div>
      <div class="popup-body">	
        <div class="body-content">
          <div class="body-titlebox">
            <h1>Confirm Modal</h1>
          </div>
          <div class="body-contentbox">
            <p> 모달 내용칸 </p>
            <form action="${pageContext.request.contextPath}/member/insertPro" method="post">
            	<input type="text" name="id" >
            	<input type="text" name="pass" >
            	<input type="text" name="name" >
            	<input type="submit" value="전송">
            </form>
          </div>
        </div>
      </div>
      <div class="popup-foot"> 
        <span class="pop-btn confirm" id="confirm">확인</span>
        <span class="pop-btn close" id="close">창 닫기</span>
      </div>
    </div>
</div>
</div>
</body>
</html>