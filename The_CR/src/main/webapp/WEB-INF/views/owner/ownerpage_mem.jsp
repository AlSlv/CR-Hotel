<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${path}/resources/css/owner.css" rel="stylesheet"/> 	
<script type="text/javascript" src="${path}/resources/js/ownerroom.js" charset="UTF-8"></script>
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
 
<form action="">
<div class = "owner">
<h1>회원 정보</h1><br>
	<table border="1" class="owner_table">
		<thead>
		<tr>
			<th>ID</th><th>이름</th><th>생일</th><th>전화번호</th><th>이메일</th><th>삭제</th>
		</tr>
		</thead>
		<tbody>
		 <c:forEach var="mem" items="${memberList }"> 
			<tr>
				<td><c:out value="${mem.id }"></c:out></td>
				<td><c:out value="${mem.name }"></c:out></td>
				<td><c:out value="${mem.birth }"></c:out></td>
				<td><c:out value="${mem.tel }"></c:out></td>
				<td><c:out value="${mem.mail }"></c:out></td>
				
				<td><input type="button" onclick="deletemember('${mem.id}');" value="삭제"></td>
			</tr>																					
		 </c:forEach>																														
		</tbody>																		
																											
	</table>
</div>
</form>
</div>
</div>

</body>
</html>