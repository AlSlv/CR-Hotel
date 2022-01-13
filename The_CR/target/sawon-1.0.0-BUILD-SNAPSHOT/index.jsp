<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>The C.R Hotel in JEJU</title>
<link rel="stylesheet" href="./resources/css/index.css" />
<script src="./resources/js/index.js" charset="UTF-8"></script>
<script src="./resources/js/jquery-3.1.1.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="./resources/js/datepicker.js"></script>
<script src="./resources/js/datepicker.ko.js"></script>
</head>
<body>

	<!-- 메인 이미지 -->
 	<div class="Image"> 
		<img src="./resources/img/indexMain.jpg" id="indexMainImage" /> 
 	</div> 

	<!-- 예약부분 -->
	<div class="reservation">
		<h1>예약 검색</h1>
		<br>
		<form action="*.do">
			체크인 <input type="text" id="datepickerS"> 체크아웃 <input
				type="text" id="datepickerE"> 객실등급 <select>
				<option value="standard">스텐다드룸
				<option value="deLuxe">디럭스룸
				<option value="suiteRoom">스위트룸
				<option value="oceanViewSuiteRoom">오션뷰-스위트룸
				<option value="executiveRoom">이그제큐디브룸
			</select> 투숙인원 <input type="text"> 명 <input type="submit" value="검색">
		</form>
	</div>

	<div class="roomPreviewText">
		<h1>객실 미리보기</h1>
	</div>

	<div class="Image">
		<img src="./resources/img/roomPreviewImage1.jpg" id="roomPreviewImage" />
	</div>

	<script>
		//객실 미리보기 사진 자동전환
		var roomImage = document.getElementById("roomPreviewImage");
		var imageArray = [ "./resources/img/roomPreviewImage1.jpg",
				"./resources/img/roomPreviewImage2.jpg",
				"./resources/img/roomPreviewImage3.jpg",
				"./resources/img/roomPreviewImage4.jpg" ];
		var imageIndex = 0;

		setInterval(changeImage, 3000);

		//달력 디자인 호출
		datePickerSet($("#datepickerS"), $("#datepickerE"), true);
	</script>

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
					<h3><a href="#"><img src="resources/img/logo.png"></a></h3>
				</div>
			</div>
		</div>
	</footer>
	<!-- //footer -->
</div>
<!-- //wraper -->

</body>
</html>