<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<link href="${path}/resources/css/style2.css" rel="stylesheet"/> 

</head>
<body>
<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!-- //header -->
<!-- 중앙 -->
<div id="middle">   

   <!-- leftMenu -->
   <div class="leftMenu">
      <h2>My Page<span>내정보</span></h2>
      <div class="lm">
         <ul class="list">
            <li><a href="mypage.do"><span>내정보</span></a></li>
            <li><a href="reservationck.do"><span>예약확인</span></a></li>   
            
         </ul>
      </div>
   </div>   
   <!-- leftMenu end -->
   
   <!-- mainList-->
   <div class="menuMenu">
      <!-- 메뉴이동경로 표시 -->
      <div class="menuintro">
         <h3>내정보</h3>
         <ul class="road">
            <li class="home"><span>Home</span></li>
            <li><span>마이페이지</span></li>
            <li class="current"><span>내정보</span></li>
         </ul>
      </div>
      <!-- 메뉴이동경로 표시 - end -->
      
      <!-- 메뉴판 -->
      <div class="contents">
         <div class="pclist">
            
               <table class="menu" border="1">
               <tr>
                  <td>ID</td>
                  <td>${member.id }</td>
               
               </tr>
               <tr>
                  <td>NAME</td>
                  <td>${member.name }</td>
               </tr>
               <tr>
                  <td>TEL</td>
                  <td>${member.tel }</td>
               </tr>
               <tr>
                  <td>E-MAIL</td>
                  <td>${member.mail }</td>
               </tr>
               <tr>
                  <td>Birth</td>
                  <td>${member.birth }</td>
               </tr>
               
               


               </table>
               <div>
               
                <input type="button" id="btn2" value="비밀번호 변경" onclick='location.href="pwchangeform.do"'>
            </div>
            <div>
               <input type="button" id="btn2" value="회원탈퇴" onclick='location.href="deleteform.do"'>
            </div>
         </div>
      </div>
      <!-- 메뉴판 - end -->
   </div>
   <!-- mainList - end-->
</div>
<!-- 중앙 - end -->
<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<!-- //footer -->

</body>
</html>