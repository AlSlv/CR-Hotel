<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="${path}/resources/js/jquery-3.1.1.min.js"></script>
<link href="${path}/resources/css/owner.css" rel="stylesheet"/> 	
<script type="text/javascript" src="${path}/resources/js/ownerroom.js" charset="UTF-8"></script>
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
				<li><a href="<c:url value='/roomList.do' />"><img src ="resources/img/room1.png"> 방 관리</a></li>
				<li><a href="<c:url value='/ownerRes.do' />"><img src ="resources/img/res1.png"> 예약명단</a></li>
				<li><a href="<c:url value='/ownersonck.do' />"><img src ="resources/img/res1.png"> 객실 현황판</a></li>
				<li><a href="<c:url value='/ownerpage_mem.do' />"><img src ="resources/img/mem.png"> 회원관리</a></li>
			</ul>
			<br>
			
		<h2>홈</h2>
		<ul class="list">
				<li><a href="index.jsp"><img src ="resources/img/home1.png"> 메인 화면으로</a></li>
				
			</ul>
		</div>
</div>
<div id = "mid_owner">
<h1>방 관리</h1>
 <form action="roomUpdate.do">
 <table border="1" class="owner_room">
  	<tr>
  		<td>객실 타입</td>
	  	<td><select name="rmname">
	  		<option value="Standard"
	  		<c:if test="${roomVO.rmname eq 'Standard'}"> selected</c:if>>스탠다드룸</option>
	  		<option value="Deluxe"
	  		<c:if test="${roomVO.rmname eq 'Deluxe'}"> selected</c:if>>디럭스룸</option>
	  		<option value="Suite"
	  		<c:if test="${roomVO.rmname eq 'Suite'}"> selected</c:if>>스위트룸</option>
	  		<option value="Oceanviewsuite"
	  		<c:if test="${roomVO.rmname eq 'Oceanviewsuite'}"> selected</c:if>>오션뷰-스위트룸</option>
	  		<option value="Executive"
	  		<c:if test="${roomVO.rmname eq 'Executive'}"> selected</c:if>>이그제큐디브룸</option>
	  	</select></td>
	</tr>
  	<tr><td>객실 호수</td><td>${roomVO.rnum}</td></tr>
  	<tr><td>가격</td><td><input type="text" name="roomPrice" value="${roomVO.roomPrice}" required> 원</td></tr>
 </table>
 <div class="roombtn">
 <input type="hidden" name="rnum" value="${roomVO.rnum }">
 <input type="submit" value="수정하기">
 <input type="button" value="취소" onclick="javascript:form.action='roomList.do'">
 
 </div>
 </form>
</div>
</div>

</body>
</html>