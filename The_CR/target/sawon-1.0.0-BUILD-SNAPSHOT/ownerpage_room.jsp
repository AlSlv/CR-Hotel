<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />  
    
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<link href="${path}/resources/css/owner.css" rel="stylesheet"/> 	
<title>Insert title here</title>
</head>
<body>
<div id= "head" >
<h1>관리자 페이지</h1>
</div>
<div id= "main">
<div id = "left_owner">
    <div id="left_owner_list">
    
  
    
      <h2>관리 목록</h2>
			<ul class="list">
				<li><a href="./views/owner/ownerpage_room.do"><img src ="resources/img/room1.png"> 객실관리</a></li>
				<li><a href="./views/owner/ownerpage_res.do"><img src ="resources/img/res1.png"> 예약관리</a></li>
				<li><a href="./views/owner/ownerpage_mem.do"><img src ="resources/img/mem.png"> 회원관리</a></li>
			</ul>
			<br>
			
		<h2>홈</h2>
		<ul class="list">
				<li><a href="index.jsp"><img src ="resources/img/home1.png"> 메인 화면으로</a></li>
				
			</ul>
		</div>
</div>
<div id = "mid_owner">
<h1>객실 현황</h1><br>

 <table border="1" class="owner_room">
 	<tbody>
		<%-- <c:forEach var="" items=""> --%>
			<tr>
				<td>a-1<br>예약자:</td><td>a-2<br>예약자:</td><td>a-3<br>예약자:</td><td>a-4<br>예약자:</td><td>a-5<br>예약자:</td>
			</tr>
			<tr>
				<td>b-1<br>예약자:</td><td>b-2<br>예약자:</td><td>b-3<br>예약자:</td><td>b-4<br>예약자:</td><td>b-5<br>예약자:</td>
			</tr>
			<tr>
				<td>c-1<br>예약자:</td><td>c-2<br>예약자:</td><td>c-3<br>예약자:</td><td>c-4<br>예약자:</td><td>c-5<br>예약자:</td>
			</tr>
			<tr>
				<td>d-1<br>예약자:</td><td>d-2<br>예약자:</td><td>d-3<br>예약자:</td><td>d-4<br>예약자:</td><td>d-5<br>예약자:</td>
			</tr>
			<tr>
				<td>e-1<br>예약자:</td><td>e-2<br>예약자:</td><td>e-3<br>예약자:</td><td>e-4<br>예약자:</td><td>e-5<br>예약자:</td>
			</tr>
			
		<%-- </c:forEach> --%>
		</tbody>
 </table> 
</div>
</div>

</body>
</html>