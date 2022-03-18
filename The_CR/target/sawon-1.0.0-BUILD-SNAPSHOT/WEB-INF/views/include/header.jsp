<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>The C.R Hotel in JEJU</title>

<link href="${path}/resources/css/headerfooter.css" rel="stylesheet"/>
</head>
<body>
<!-- wrapper -->
<div id="wrapper">
	<div class="container">
		<!-- header -->
		<header id="header">
			<div class="loginArea">
				<ul>
				<!-- 로그인 안했을 시  -->
				<c:if test="${empty sessionScope.id }">
					<li><a href="#">로그인</a></li>
					<li class="item"><a href="#">회원가입</a></li>
				</c:if>
				<!-- 로그인 했을 시 -->
				<c:if test="${!empty sessionScope.id}">
					<li><a href="#">로그아웃</a></li>
					<li class="item"><a href="#">마이페이지</a></li>
					<li class="item"><a href="#">예약확인</a></li>
				</c:if>
				</ul>
			</div>
			<div class="logo">
					<h1><a href="#"><img src="resources/img/logo.png"></a></h1>
				</div>
			<nav class="nav">
				<div class="left">
					<ul class="gnb">
						<li><a href="#">C.R 호텔</a>
							<div class="lnb">
								<ul class="lnb_ul">
									<div class="txt">
										<em>C.R HOTEL</em>
										<span>제주에서 만나는 편안한 휴양처<br>
										C.R 호텔과 함께하세요
										</span>
									</div>
									<div class="lnb_list">
										<li><a href="#">개요</a></li>
										<li><a href="#">호텔 소개</a></li>
										<li><a href="#">수상이력</a></li>
										<li><a href="#">오시는 길</a></li>
									</div>
								</ul>
							</div>
						</li>
						<li><a href="#">객실안내</a>
							<div class="lnb">
								<ul class="lnb_ul">
									<div class="txt">
										<em>C.R HOTEL</em>
										<span>제주에서 만나는 편안한 휴양처<br>
										C.R 호텔과 함께하세요
										</span>
									</div>
									<li><a href="#">스탠다드룸</a></li>
									<li><a href="#">디럭스룸</a></li>
									<li><a href="#">스위트룸</a></li>
									<li><a href="#">오션뷰-스위트룸</a></li>
									<li><a href="#">이그제큐티브룸</a></li>
								</ul>
							</div>
						</li>
					</ul>
				</div>
				<div class="right">
					<ul class="gnb">
						<li><a href="#">예약<span class="ico_date"></span></a></li>
						<li><a href="#">문의</a>
							<div class="lnb">
								<ul class="lnb_ul">
									<li><a href="#">고객의 소리</a></li>
								</ul>
							</div>
						</li>
						<li><a href="#">프로모션</a>
							<div class="lnb">
								<ul class="lnb_ul">
									<li><a href="#">패키지 & 프로모션</a></li>
									<li><a href="#">주변 볼거리 & 즐길 거리</a></li>
								</ul>
							</div>
						</li>
					</ul>
				</div>
			</nav>
		</header>
		<!-- //header  -->
	</div>
</div>
</body>
</html>