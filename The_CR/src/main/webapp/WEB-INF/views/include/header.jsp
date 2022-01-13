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
				<c:choose>
					<c:when test="${member == null }">
					<li><a href="loginform.do">로그인</a></li>
					<li class="item"><a href="joinform.do">회원가입</a></li>
					</c:when>
					<c:when test="${profile_nickname !=null }">
					<li><a href="logout.do">로그아웃</a></li>
					<li class="item"><a href="#">회원관리</a></li>
					</c:when>
					
					
					<c:when test="${member.id eq 'manager'}">
					<li><a href="logout.do">로그아웃</a></li>
					<li class="item"><a href="<c:url value='/roomList.do' />">관리</a></li>
					</c:when>
					
					<c:when test="${member != null}">
					<li><a href="logout.do">로그아웃</a></li>
					<li class="item"><a href="mypage.do">마이페이지</a></li>
					</c:when>
					
				</c:choose>
				
				</ul>
			</div>
			<div class="logo">
					<h1><a href="index.do"><img src="resources/img/logo.png"></a></h1>
				</div>
			<nav class="nav">
				<div class="left">
					<ul class="gnb">
						<li><a href="about.do">C.R 호텔</a>
							<div class="lnb">
								<ul class="lnb_ul">
									<div class="txt">
										<em>C.R HOTEL</em>
										<span>제주에서 만나는 편안한 휴양처<br>
										C.R 호텔과 함께하세요
										</span>
									</div>
									<li><a href="about.do">개요</a></li>
									<li><a href="inform.do">호텔 소개</a></li>
									<li><a href="award.do">수상이력</a></li>
									<li><a href="map.do">오시는 길</a></li>
								</ul>
							</div>
						</li>
						<li><a href="accommodation.do">객실안내</a>
							<div class="lnb">
								<ul class="lnb_ul">
									<div class="txt">
										<em>C.R HOTEL</em>
										<span>제주에서 만나는 편안한 휴양처<br>
										C.R 호텔과 함께하세요
										</span>
									</div>
									<li><a href="accommodation.do#room-info1">스탠다드룸</a></li>
									<li><a href="accommodation.do#room-info2">디럭스룸</a></li>
									<li><a href="accommodation.do#room-info3">스위트룸</a></li>
									<li><a href="accommodation.do#room-info4">오션뷰-스위트룸</a></li>
									<li><a href="accommodation.do#room-info5">이그제큐티브룸</a></li>
								</ul>
							</div>
						</li>
					</ul>
				</div>
				<div class="right">
					<ul class="gnb">
						<li><a href="res.do">예약<span class="ico_date"></span></a></li>
						<li><a href="question.do">문의</a>
							<div class="lnb">
								<ul class="lnb_ul">
									<li><a href="contact.do">연락처</a></li>
									<li><a href="question.do">고객의 소리</a></li>
								</ul>
							</div>
						</li>
						<li><a href="promotion.do">프로모션</a>
							<div class="lnb">
								<ul class="lnb_ul">
									<li><a href="promotion.do">패키지 & 프로모션</a></li>
									<li><a href="around.do">주변 볼거리 & 즐길 거리</a></li>
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