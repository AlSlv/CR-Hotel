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
</head>
<body>
<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!-- //header -->

<form action="login.do" method="post">
        <!-- wrapper -->
        <div id="wrapper1">

            <!-- content-->
            <div id="content2">
	
                <!-- ID -->
                <div>
                    <h3 class="join_title">
                        <label for="id">아이디</label>
                    </h3>
                    <span class="box int_id">
                        <input type="text" id="id" name="id" class="int" maxlength="20">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- PW1 -->
                <div>
                    <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
                    <span class="box int_pass">
                        <input type="password" id="pswd1" name="pw" class="int" maxlength="20">
                       
                    </span>
                    <span class="error_next_box"></span>
                </div>
 

                

                <!-- JOIN BTN-->
                <div class="btn_area2">
                    <button type="submit" id="btnjoin">
                        <span>로그인</span>
                    </button>
                </div>
          </form>      
                <div class="btn_area2">
                    <button type="button" id="btnjoin" onclick='location.href="id_find.do"'>
                        <span>ID 찾기</span>
                    </button>
                </div>
                <div class="btn_area2">
                    <button type="button" id="btnjoin" onclick='location.href="pw_find.do"'>
                        <span>PW 찾기</span>
                    </button>
                </div>
                <div class="btn_area2">
                    <button type="button" id="btnjoin" onclick='location.href="joinform.do"'>
                        <span>회원가입</span>
                    </button>
                </div>

                

            </div> 
            <!-- content-->

        </div> 
        <!-- wrapper -->
   
   <!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<!-- //footer -->
</body>
</html>