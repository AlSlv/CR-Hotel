<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<script src="${path}/resources/js/jquery-3.1.1.min.js"></script>
<link href="${path}/resources/css/style2.css" rel="stylesheet"/>
<script src="${path}/resources/js/myres.js" charset="UTF-8"></script>
<script type = "text/javascript">
	function inputbox(){
		var name;
		name=prompt("패스워드를 입력하세요");
	}
</script>
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
			<h3>예약 확인</h3>
			<ul class="road">
				<li class="home"><span>Home</span></li>
				<li><span>마이페이지</span></li>
				<li class="current"><span>예약확인</span></li>
			</ul>
		</div>
		<!-- 메뉴이동경로 표시 - end -->
		
		<!-- 메뉴판 -->
		<div class="contents">
			<div class="pclist">
				
			<form action="#">
			
				<c:choose>
				<c:when test="${fn:length(alist) != 0}">
			<c:forEach var="i" items="${alist}" varStatus="status">
				<table class="menu" border="1">
					<tr>
						<td>예약 번호</td>
						<td>${i.res_no }</td>
					</tr>
					<tr>
						<td>예약자 성함</td>
						<td>${i.rname }</td>
					</tr>
					<tr>
						<td>예약자 전화번호</td>
						<td>${i.rtel }</td>
					</tr>
					<tr>
						<td>객실 타입 - 객실 호수</td>
						<td>${i.rmname } - ${i.rnum }</td>
					</tr>
					<tr>
						<td>예약 날짜</td>
						<td>${i.ckin } ~ ${i.ckout }</td>
					</tr>
					<tr>
						<td>인원 수</td>
						<td>${i.people } 명</td>
					</tr>
					<tr>
						<td>가격</td>
						<td>${i.price } 원</td>
					</tr>
					<tr>
						<td>요청사항</td>
						<td>${i.require }</td>
					</tr>
					</table>
					<div>
						<input type="hidden" name="res_no${status.index}" value="${i.res_no }" >
						<input type="button" value="예약 취소" onclick="resCancle(res_no${status.index});">
					</div>
				</c:forEach>
				</c:when>
				<c:otherwise> 
			 		<div class="descWrap">
						<p>예약한 방이 없습니다.</p>
					</div>
				
			 </c:otherwise>
			</c:choose>
				</form>
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