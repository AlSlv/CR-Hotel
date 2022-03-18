<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="${path}/resources/js/jquery-3.1.1.min.js"></script>
<script src="${path}/resources/js/datepicker.js"></script>
<script src="${path}/resources/js/datepicker.ko.js"></script>
<script type="text/javascript" src="${path}/resources/js/owner.js" charset="UTF-8"></script>
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
<div class = "owner">
<div class="reslist">
<form action="#">
<h1>예약 명단</h1><br>
	<table border="1" class="owner_table">
		<thead>
		<tr>
			<th>예약번호</th><th>아이디</th><th>체크인</th><th>체크아웃</th><th>이름</th><th>전화번호</th><th>인원수</th><th>객실</th><th>방 호수</th><th>요청사항</th><th>가격</th><th><input id="allCheck" type="checkbox" name="allCheck" /></th>
		</tr>
		</thead>
		<tbody>
		<c:choose>
			<c:when test="${not empty alist}">
			<c:forEach var="i" items="${alist}">
				<tr>
					<td>${i.res_no }</td>
					<td>${i.id }</td>
					<td>${i.ckin }</td>
					<td>${i.ckout }</td>
					<td>${i.rname }</td>
					<td>${i.rtel }</td>
					<td>${i.people } 명</td>
					<td>${i.rmname }</td>
					<td>${i.rnum } 호</td>
					<td>${i.require }</td>
					<td>${i.price }</td>
					<td><input type="checkbox" value="${i.res_no}" name="RowCheck"></td>
				</tr>
			</c:forEach>
			</c:when>
			<c:otherwise>
				<tr>
					<td colspan="12" style="padding:115px;font-size:24px;">검색 결과가 없습니다.</td>
				</tr>
			</c:otherwise>
		</c:choose>
		</tbody>
	</table>
			<input type="button" value="선택삭제" onclick="deleteValue();" class="deletebtn">
</form>
</div>
	<!-- 예약부분 -->
	<div class="reservation">
		<form action="ownerSearch.do">
			예약일 <input type="text" id="datepickerS" name="ckin" value="${param.ckin }" autocomplete='off' required> ~ 
			 <input type="text" id="datepickerE" name="ckout" value="${param.ckout }" autocomplete='off' required>
			<select name="select_option">
			<option value="rname"
				<c:if test="${select_option eq 'rname'}"> selected</c:if>>이름</option>
			<option value="id"
				<c:if test="${select_option eq 'id'}"> selected</c:if>>아이디</option>
			</select>
			<input type="text" name="keyword" value="${param.keyword }"/>
			<input type="submit" value="검색">
		</form>
	</div>
	<script>
		//달력 디자인 호출
		datePickerSet($("#datepickerS"), $("#datepickerE"), true);
	</script>
</div>
</div>
</div>
</body>
</html>