<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="${path}/resources/css/headerfooter.css" rel="stylesheet"/> 

</head>
<body>
	<!-- footer -->
	<footer id="footer">
		<div class="f_inner">
			<div class="box">
				<div class="linkbox">
					<ul class="ul">
						<li><a href="#">CR호텔 소개</a></li>
						<li class="item"><a href="#">개인정보처리방침</a></li>
						<li class="item"><a href="#">사이트맵</a></li>
						<li class="item"><a href="#">고객문의</a></li>
					</ul>
				</div>
				<div class="sns">
					<a href="#"><img src="resources/img/ico_facebook.png" alt="facebook" /></a>
					<a href="#"><img src="resources/img/ico_insta.png" alt="instagram" /></a>
					<a href="#"><img src="resources/img/ico_twitter.png" alt="twitter" /></a>
				</div>
			</div>
			<div class="aside_area">
				<div class="adressbox">
					<address>제주 서귀포시 중문관광로3번길 486</address>
					<p>대표이사 : 배경은 &nbsp;대표전화 : 1588-1588 &nbsp;고객문의 : 070-1234-5678</p>
					<p>사업자등록번호 123-45-67890</p>
					<p>Copyright (C) C.R HOTEL. All Rights Reserved.</p>
				</div>
				<div class="f_logo">
					<h3><a href="index.do"><img src="resources/img/logo.png"></a></h3>
				</div>
			</div>
		</div>
	</footer>
	<!-- //footer -->
</div>
<!-- //wraper -->
</body>
</html>