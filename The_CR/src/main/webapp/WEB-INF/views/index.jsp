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
<script src="./resources/js/popup.js"></script>
</head>
<body onload="javascript:openPopup('popup.do')"> 
<body>
<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!-- //header -->


	<!-- 메인 이미지 -->
 	<div class="Image"> 
		<img src="./resources/img/indexMain.jpg" id="indexMainImage" /> 
 	</div> 

	<!-- 예약부분 -->
	<div class="reservation">
		<h1>예약 검색</h1>
		<br>
		<form action="reserveSearch.do" method="post">
			체크인 <input type="text" id="datepickerS" name="ckin" value="${ckin }" autocomplete='off' required> 체크아웃 <input
				type="text" id="datepickerE" name="ckout" value="${ckout}" autocomplete='off' required> 객실등급 <select name="rmname">
				<option value="Standard" 
					<c:if test="${reserveVO.rmname eq 'Standard'}"> selected</c:if>>스탠다드룸
				<option value="Deluxe" 
					<c:if test="${reserveVO.rmname eq 'Deluxe'}"> selected</c:if>>디럭스룸
				<option value="Suite"
					<c:if test="${reserveVO.rmname eq 'Suite'}"> selected</c:if>>스위트룸
				<option value="Oceanviewsuite"
					<c:if test="${reserveVO.rmname eq 'Oceanviewsuite'}"> selected</c:if>>오션뷰-스위트룸
				<option value="Executive"
					<c:if test="${reserveVO.rmname eq 'Executive'}"> selected</c:if>>이그제큐티브룸
			</select>
			<input id="ressub" type="submit" value="검색">
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
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
	<!-- //footer -->
</div>
<!-- //wraper -->

</body>
</html>