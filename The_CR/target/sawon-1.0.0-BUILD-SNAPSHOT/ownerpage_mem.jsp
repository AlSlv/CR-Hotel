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
				<li><a href="index.jsp"><img src ="resources/img/home1.png"> 홈으로</a></li>
				
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
			<th>ID</th><th>PW</th><th>이름</th><th>생일</th><th>주소</th><th>전화번호</th><th>이메일</th>
		</tr>
		</thead>
		<tbody>
		<%-- <c:forEach var="" items=""> --%>
			<tr>
				<td> </td><td> </td><td> </td><td> </td><td> </td><td> </td> <td> </td>
			</tr>
		<%-- </c:forEach> --%>
		</tbody>
	
	</table>
</div>
</form>
</div>
</div>

</body>
</html>