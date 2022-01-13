<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<link href="./resources/css/style1.css" rel="stylesheet"/> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	// pw 확인
    function pwcheck() {
	 
      var p1 = document.getElementById('pw').value;
      var p2 = document.getElementById('pw2').value;
      var p3 = document.getElementById('pw1').value;
      var p4 = document.getElementById('pw4').value;
      
      if( p1 != p2 ) {
        alert("비밀번호가 일치 하지 않습니다");
        
        return false;
      } else if(p3 != p4){
    	  alert("패스워드 정보가 틀립니다.")
    	  
    	  return false;
      } else{

        return true;
        
      }
    }

  </script>
</head>
<body>
<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!-- //header -->
<form action="pw_change.do" method="post" onsubmit="return pwcheck()">
        <!-- wrapper -->
        <div id="wrapper1">

            <!-- content-->
            <div id="content2">
	
                <!-- ID -->

                <input type="hidden" id="pw4" name="pw4" value="${member.pw }">
                <input type="hidden" id="id" name="id" value="${member.id }">

                <div>
                    <h3 class="join_title">
                        <label for="id">기존 비밀번호</label>
                    </h3>
                    <span class="box int_id">
                        <input type="password" id="pw1" name="pw1" class="int" maxlength="20">
                    </span>
                </div>

                <!-- PW1 -->
                <div>
                    <h3 class="join_title"><label for="pswd1">새 비밀번호</label></h3>
                    <span class="box int_pass">
                        <input type="password" id="pw" name="pw" class="int" maxlength="20">
                    </span>
                </div>
                 <!-- PW1 -->
                <div>
                    <h3 class="join_title"><label for="pswd1">새 비밀번호 확인</label></h3>
                    <span class="box int_pass">
                        <input type="password" id="pw2" name="pw2" class="int" maxlength="20">
                    </span>
                </div>

                

                <!-- JOIN BTN-->
                <div class="btn_area2">
                    <button type="submit" id="btnjoin">
                        <span>변경</span>
                    </button>
                </div>
                
                <div class="btn_area2">
                    <button type="button" id="btnjoin" onclick='location.href="loginform.do"'>
                        <span>취소</span>
                    </button>
                </div>
               

                

            </div> 
            <!-- content-->

        </div> 
        <!-- wrapper -->
   </form>
   <!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<!-- //footer -->
</body>
</html>