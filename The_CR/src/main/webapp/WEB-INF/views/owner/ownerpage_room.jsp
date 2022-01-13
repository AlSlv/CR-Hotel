<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
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
 <form action="#">
 <table border="1" class="owner_table">
  <thead>
  	<tr><th>번호</th><th>객실타입 </th><th>객실호수</th><th>가격</th><th>비고</th></tr>
  </thead>
  <tbody>
  	<c:forEach var="i" items="${alist }" varStatus="status">
  		<tr>
  			<td>${i.rownm}</td>
  			<td>
  			<c:if test="${i.rmname != null }">${i.rmname }</c:if>
  			<c:if test="${i.rmname == 'Standard'}">스탠다드룸 </c:if>
  			<c:if test="${i.rmname == 'Deluxe'}">디럭스룸 </c:if>
  			<c:if test="${i.rmname == 'Suite'}">스위트룸 </c:if>
  			<c:if test="${i.rmname == 'Oceanviewsuite'}">오션뷰-스위트룸 </c:if>
  			<c:if test="${i.rmname == 'Executive'}">이그제큐티브룸 </c:if>
  			<input type="hidden" name="rmname" value="${i.rmname}"></td>
  			<td>${i.rnum } 호<input type="hidden" name="runm${status.index}" value="${i.rnum}"></td>
  			<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${i.roomPrice}" /> 원<input type="hidden" name="roomPrice" value="${i.roomPrice}"></td>
  			<td><input type="button" onclick="location.href='getRoomInfo.do?rnum=${i.rnum}'" value="수정">
  			<input type="button" onclick="deleteRoom(runm${status.index});" value="삭제"></td>
  		</tr>
  	</c:forEach>
  </tbody>
 </table>
 </form>
 <div>
 <h1>방 추가하기</h1> 
 <form action="roomInsert.do">
 	<table border="1" class="owner_room">
 		<tr>
 		<td>객실 타입 <select name="rmname">
            <option value="Standard">스탠다드룸</option>
            <option value="Deluxe">디럭스룸</option>
            <option value="Suite">스위트룸</option>
            <option value="Oceanveiwsuite">오션뷰-스위트룸</option>
            <option value="Executive">이그제큐티브룸</option>
        </select></td>
 		<td>객실 호수 <input type="number" onkeydown="javascript: return event.keyCode == 69 ? false : true" name="rnum" min="0" max="99999" required> 호</td>
         <td>가격 <input type="number" onkeydown="javascript: return event.keyCode == 69 ? false : true" name="roomPrice" min="0" max="9999999" required> 원</td>
 		<td><input type="submit" value="추가"></td>
 		</tr>
 	</table>
 	</form>
 </div>
</div>
</div>

</body>
</html>