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
		<h2>고객문의</h2><hr>
		<div class="lm">
			<ul class="list">
				<li><a href="contact.do"><span>연락처</span></a></li>
				<li><a href="question.do"><span>문의하기</span></a></li>			
			</ul>
		</div>
	</div>	
	<!-- leftMenu end -->
	
	<!-- mainList-->
	<div class="menuMenu">
		<!-- 메뉴이동경로 표시 -->
		<div class="menuintro">
			<h3>연락처</h3>
			<ul class="road">
				<li class="home"><span>Home</span></li>
				<li><span>고객문의</span></li>
				<li class="current"><span>연락처</span></li>
			</ul>
		</div>
		<!-- 메뉴이동경로 표시 - end -->
		<div class="text">호텔 이용에 관련된 문의는 대표전화를 이용하면 더욱 빠르게 답변을 받으실 수 있습니다.</div>
		<div class="contact">
			
			<table>
				<tr>
				<td class="td1">대표전화</td>
				<td>02-1212-3333<br><span>* 평일(월~금요일) 09:00~18:00, 주말 및 공휴일 09:00~16:00</span></td>
				</tr>
				<tr>
				<td class="td1">객실예약</td>
				<td>02-2121-4444<br><span>* 평일(월~금요일) 09:00~18:00, 주말 및 공휴일 09:00~16:00<span></td>
				</tr>
			</table>
			
			<table>
				
			</table>
			
		
		
		</div>
		
	</div>
</div>	

<!-- 중앙 - end -->

<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<!-- //footer -->


</body>
</html>