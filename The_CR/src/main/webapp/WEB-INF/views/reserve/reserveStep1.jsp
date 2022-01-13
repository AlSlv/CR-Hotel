<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Step1</title>

<link rel="stylesheet" href="${path}/resources/css/reserve.css" />
<script src="${path}/resources/js/reserve.js" charset="UTF-8"></script>
<script src="${path}/resources/js/jquery-3.1.1.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="${path}/resources/js/datepicker.js"></script>
<script src="${path}/resources/js/datepicker.ko.js"></script>
</head>
<body>


<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!-- //header -->
<div class="contain">
	<!-- 예약부분 -->
	<div class="reservation">
		<h1>예약 검색</h1>
		<br>
		<form action="reserveSearch.do" method="post">
			<input type="hidden" name="id" value="${member.id }">
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
	<script>
		//달력 디자인 호출
		datePickerSet($("#datepickerS"), $("#datepickerE"), true);
	</script>
	<!-- //reservation -->
	<c:if test="${reserveVO == null}">
		<div class="descWrap">
			<p>예약을 원하시는 날짜, 객실 타입을 선택해주세요.</p>
		</div>
	</c:if>
	<div class="rsvResult">
		<ul>
			<c:choose>
				<c:when test="${fn:length(alist) != 0}">
			<c:forEach var="i" items="${alist}" varStatus="status">
			<c:if test="${i.rmname eq 'Standard' and status.index==0}">
			<li>
				<div class="roomInfo">
					<div class="roomImg">
						<img src="${path}/resources/img/Hotel_standard_img1_pix.jpg" width=260px height=153px; >
					</div>
					<div class="roomDetail">
						<ul>
							<li class="first">스탠다드 룸-${i.rnum }호</li>
							<li><a href="accommodation.do#room-info1">객실 상세보기</a></li>
							<li>더 캐럿의 스탠다드 객실은 아늑한 크기의 객실로 5층에 위치합니다.<br />
								  자연 채광이 들어오는 욕실은 분리형 샤워부스와 2개의 세면대, 전신 욕조가 있으며 <br />
								  어디서나 오션뷰 전망을 볼 수 있게 설계되어 아름다운 경치를 보며 쉴 수 있습니다.</li>
						</ul>
					</div>
					<form action="reserveGo.do" class="roomRsv">
						<span class="price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${i.price}" /> 원 (1박 기준)</span>
						<input type="hidden" value="${i.price }" name="price">
						<input type="hidden" value="${ckin }" name="ckin">
						<input type="hidden" value="${ckout }" name="ckout">
						<input type="hidden" value="${i.rnum }" name="rnum">
						<input type="hidden" value="${i.rmname }" name="rmname">
						<input type="submit" class="rsvBtn" value="예약하기">
					</form>
				</div>
			</li>
			</c:if>
			<c:if test="${i.rmname eq 'Standard' and status.index==1}">
			<li>
				<div class="roomInfo">
					<div class="roomImg">
						<img src="${path}/resources/img/Hotel_standard_img2_pix.jpg" width=260px height=153px; >
					</div>
					<div class="roomDetail">
						<ul>
							<li class="first">스탠다드 룸-${i.rnum }호</li>
							<li><a href="accommodation.do#room-info1">객실 상세보기</a></li>
							<li>더 캐럿의 스탠다드 객실은 아늑한 크기의 객실로 5층에 위치합니다.<br />
								  자연 채광이 들어오는 욕실은 분리형 샤워부스와 2개의 세면대, 전신 욕조가 있으며 <br />
								  어디서나 오션뷰 전망을 볼 수 있게 설계되어 아름다운 경치를 보며 쉴 수 있습니다.</li>
						</ul>
					</div>
					<form action="reserveGo.do" class="roomRsv">
						<span class="price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${i.price}" /> 원 (1박 기준)</span>
						<input type="hidden" value="${i.price }" name="price">
						<input type="hidden" value="${ckin }" name="ckin">
						<input type="hidden" value="${ckout }" name="ckout">
						<input type="hidden" value="${i.rnum }" name="rnum">
						<input type="hidden" value="${i.rmname }" name="rmname">
						<input type="hidden" value="${member.id}" name="id">
						
						<input type="submit" class="rsvBtn" value="예약하기">
					</form>
				</div>
			</li>
			</c:if>
			<c:if test="${i.rmname eq 'Standard' and status.index==2}">
			<li>
				<div class="roomInfo">
					<div class="roomImg">
						<img src="${path}/resources/img/Hotel_standard_img3_pix.jpg" width=260px height=153px; >
					</div>
					<div class="roomDetail">
						<ul>
							<li class="first">스탠다드 룸-${i.rnum }호</li>
							<li><a href="accommodation.do#room-info1">객실 상세보기</a></li>
							<li>더 캐럿의 스탠다드 객실은 아늑한 크기의 객실로 5층에 위치합니다.<br />
								  자연 채광이 들어오는 욕실은 분리형 샤워부스와 2개의 세면대, 전신 욕조가 있으며 <br />
								  어디서나 오션뷰 전망을 볼 수 있게 설계되어 아름다운 경치를 보며 쉴 수 있습니다.</li>
						</ul>
					</div>
					<form action="reserveGo.do" class="roomRsv">
						<span class="price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${i.price}" /> 원 (1박 기준)</span>
						<input type="hidden" value="${i.price }" name="price">
						<input type="hidden" value="${ckin }" name="ckin">
						<input type="hidden" value="${ckout }" name="ckout">
						<input type="hidden" value="${i.rnum }" name="rnum">
						<input type="hidden" value="${i.rmname }" name="rmname">
						<input type="hidden" value="${member.id}" name="id">
						<input type="submit" class="rsvBtn" value="예약하기">
					</form>
				</div>
			</li>
			</c:if>
			<c:if test="${i.rmname eq 'Standard' and status.index==3}">
			<li>
				<div class="roomInfo">
					<div class="roomImg">
						<img src="${path}/resources/img/Hotel_standard_img1_pix.jpg" width=260px height=153px; >
					</div>
					<div class="roomDetail">
						<ul>
							<li class="first">스탠다드 룸-${i.rnum }호</li>
							<li><a href="accommodation.do#room-info1">객실 상세보기</a></li>
							<li>더 캐럿의 스탠다드 객실은 아늑한 크기의 객실로 5층에 위치합니다.<br />
								  자연 채광이 들어오는 욕실은 분리형 샤워부스와 2개의 세면대, 전신 욕조가 있으며 <br />
								  어디서나 오션뷰 전망을 볼 수 있게 설계되어 아름다운 경치를 보며 쉴 수 있습니다.</li>
						</ul>
					</div>
					<form action="reserveGo.do" class="roomRsv">
						<span class="price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${i.price}" /> 원 (1박 기준)</span>
						<input type="hidden" value="${i.price }" name="price">
						<input type="hidden" value="${ckin }" name="ckin">
						<input type="hidden" value="${ckout }" name="ckout">
						<input type="hidden" value="${i.rnum }" name="rnum">
						<input type="hidden" value="${i.rmname }" name="rmname">
						<input type="submit" class="rsvBtn" value="예약하기">
					</form>
				</div>
			</li>
			</c:if>
			<c:if test="${i.rmname eq 'Deluxe' and status.index==0}">
			<li>
				<div class="roomInfo">
					<div class="roomImg">
						<img src="${path}/resources/img/Hotel_deluxe_img1_pix.jpg" width=260px height=153px; >
					</div>
					<div class="roomDetail">
						<ul>
							<li class="first">디럭스 룸-${i.rnum }호</li>
							<li><a href="accommodation.do#room-info2">객실 상세보기</a></li>
							<li>더 캐럿의 디럭스 객실은 보다 넓은 공간이며 6층에 위치합니다.<br />
								  분리형 샤워부스와 2개의 세면대, 전신 욕조가 있어 편안하게 휴식하실 수 있습니다. <br />
								  발코니를 통해 아름다운 오션뷰 혹은 마운틴뷰를 감상하며 편안하게 지내실 수 있습니다.</li>
						</ul>
					</div>
					<form action="reserveGo.do" class="roomRsv">
						<span class="price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${i.price}" /> 원 (1박 기준)</span>
						<input type="hidden" value="${i.price }" name="price">
						<input type="hidden" value="${ckin }" name="ckin">
						<input type="hidden" value="${ckout }" name="ckout">
						<input type="hidden" value="${i.rnum }" name="rnum">
						<input type="hidden" value="${i.rmname }" name="rmname">
						<input type="submit" class="rsvBtn" value="예약하기">
					</form>
				</div>
			</li>
			</c:if>
			<c:if test="${i.rmname eq 'Deluxe' and status.index==1}">
			<li>
				<div class="roomInfo">
					<div class="roomImg">
						<img src="${path}/resources/img/Hotel_deluxe_img2_pix.jpg" width=260px height=153px; >
					</div>
					<div class="roomDetail">
						<ul>
							<li class="first">디럭스 룸-${i.rnum }호</li>
							<li><a href="accommodation.do#room-info2">객실 상세보기</a></li>
							<li>더 캐럿의 디럭스 객실은 보다 넓은 공간이며 6층에 위치합니다.<br />
								  분리형 샤워부스와 2개의 세면대, 전신 욕조가 있어 편안하게 휴식하실 수 있습니다. <br />
								  발코니를 통해 아름다운 오션뷰 혹은 마운틴뷰를 감상하며 편안하게 지내실 수 있습니다.</li>
						</ul>
					</div>
					<form action="reserveGo.do" class="roomRsv">
						<span class="price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${i.price}" /> 원 (1박 기준)</span>
						<input type="hidden" value="${i.price }" name="price">
						<input type="hidden" value="${ckin }" name="ckin">
						<input type="hidden" value="${ckout }" name="ckout">
						<input type="hidden" value="${i.rnum }" name="rnum">
						<input type="hidden" value="${i.rmname }" name="rmname">
						<input type="submit" class="rsvBtn" value="예약하기">
					</form>
				</div>
			</li>
			</c:if>
			<c:if test="${i.rmname eq 'Deluxe' and status.index==2}">
			<li>
				<div class="roomInfo">
					<div class="roomImg">
						<img src="${path}/resources/img/Hotel_deluxe_img3_pix.jpg" width=260px height=153px; >
					</div>
					<div class="roomDetail">
						<ul>
							<li class="first">디럭스 룸-${i.rnum }호</li>
							<li><a href="accommodation.do#room-info2">객실 상세보기</a></li>
							<li>더 캐럿의 디럭스 객실은 보다 넓은 공간이며 6층에 위치합니다.<br />
								  분리형 샤워부스와 2개의 세면대, 전신 욕조가 있어 편안하게 휴식하실 수 있습니다. <br />
								  발코니를 통해 아름다운 오션뷰 혹은 마운틴뷰를 감상하며 편안하게 지내실 수 있습니다.</li>
						</ul>
					</div>
					<form action="reserveGo.do" class="roomRsv">
						<span class="price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${i.price}" /> 원 (1박 기준)</span>
						<input type="hidden" value="${i.price }" name="price">
						<input type="hidden" value="${ckin }" name="ckin">
						<input type="hidden" value="${ckout }" name="ckout">
						<input type="hidden" value="${i.rnum }" name="rnum">
						<input type="hidden" value="${i.rmname }" name="rmname">
						<input type="submit" class="rsvBtn" value="예약하기">
					</form>
				</div>
			</li>
			</c:if>
			<c:if test="${i.rmname eq 'Deluxe' and status.index==3}">
			<li>
				<div class="roomInfo">
					<div class="roomImg">
						<img src="${path}/resources/img/Hotel_deluxe_img2_pix.jpg" width=260px height=153px; >
					</div>
					<div class="roomDetail">
						<ul>
							<li class="first">디럭스 룸-${i.rnum }호</li>
							<li><a href="accommodation.do#room-info2">객실 상세보기</a></li>
							<li>더 캐럿의 디럭스 객실은 보다 넓은 공간이며 6층에 위치합니다.<br />
								  분리형 샤워부스와 2개의 세면대, 전신 욕조가 있어 편안하게 휴식하실 수 있습니다. <br />
								  발코니를 통해 아름다운 오션뷰 혹은 마운틴뷰를 감상하며 편안하게 지내실 수 있습니다.</li>
						</ul>
					</div>
					<form action="reserveGo.do" class="roomRsv">
						<span class="price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${i.price}" /> 원 (1박 기준)</span>
						<input type="hidden" value="${i.price }" name="price">
						<input type="hidden" value="${ckin }" name="ckin">
						<input type="hidden" value="${ckout }" name="ckout">
						<input type="hidden" value="${i.rnum }" name="rnum">
						<input type="hidden" value="${i.rmname }" name="rmname">
						<input type="submit" class="rsvBtn" value="예약하기">
					</form>
				</div>
			</li>
			</c:if>
			<c:if test="${i.rmname eq 'Suite' and status.index==0}">
			<li>
				<div class="roomInfo">
					<div class="roomImg">
						<img src="${path}/resources/img/Hotel_sweet_img1_pix.jpg" width=260px height=153px; >
					</div>
					<div class="roomDetail">
						<ul>
							<li class="first">스위트 룸-${i.rnum }호</li>
							<li><a href="accommodation.do#room-info3">객실 상세보기</a></li>
							<li>더 캐럿의 스위트 객실은 거실과 침실을 구분해두었으며, 7층에 위치합니다.<br />
								  공간의 여유로운 분리로 편안하면서도 프라이빗한 이용을 위해 제공되는 객실입니다. <br />
								  분리형 샤워부스와 2개의 세면대, 전신 욕조가 있어 편안하게 휴식하실 수 있습니다. <br />
								  더 캐럿의 스위트룸은 보다 특별한 서비스로 이용객의 품격을 높입니다.</li>
						</ul>
					</div>
					<form action="reserveGo.do" class="roomRsv">
						<span class="price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${i.price}" /> 원 (1박 기준)</span>
						<input type="hidden" value="${i.price }" name="price">
						<input type="hidden" value="${ckin }" name="ckin">
						<input type="hidden" value="${ckout }" name="ckout">
						<input type="hidden" value="${i.rnum }" name="rnum">
						<input type="hidden" value="${i.rmname }" name="rmname">
						<input type="submit" class="rsvBtn" value="예약하기">
					</form>
				</div>
			</li>
			</c:if>
			<c:if test="${i.rmname eq 'Suite' and status.index==1}">
			<li>
				<div class="roomInfo">
					<div class="roomImg">
						<img src="${path}/resources/img/Hotel_sweet_img2_pix.jpg" width=260px height=153px; >
					</div>
					<div class="roomDetail">
						<ul>
							<li class="first">스위트 룸-${i.rnum }호</li>
							<li><a href="accommodation.do#room-info3">객실 상세보기</a></li>
							<li>더 캐럿의 스위트 객실은 거실과 침실을 구분해두었으며, 7층에 위치합니다.<br />
								  공간의 여유로운 분리로 편안하면서도 프라이빗한 이용을 위해 제공되는 객실입니다. <br />
								  분리형 샤워부스와 2개의 세면대, 전신 욕조가 있어 편안하게 휴식하실 수 있습니다. <br />
								  더 캐럿의 스위트룸은 보다 특별한 서비스로 이용객의 품격을 높입니다.</li>
						</ul>
					</div>
					<form action="reserveGo.do" class="roomRsv">
						<span class="price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${i.price}" /> 원 (1박 기준)</span>
						<input type="hidden" value="${i.price }" name="price">
						<input type="hidden" value="${ckin }" name="ckin">
						<input type="hidden" value="${ckout }" name="ckout">
						<input type="hidden" value="${i.rnum }" name="rnum">
						<input type="hidden" value="${i.rmname }" name="rmname">
						<input type="submit" class="rsvBtn" value="예약하기">
					</form>
				</div>
			</li>
			</c:if>
			<c:if test="${i.rmname eq 'Suite' and status.index==2}">
			<li>
				<div class="roomInfo">
					<div class="roomImg">
						<img src="${path}/resources/img/Hotel_sweet_img3_pix.jpg" width=260px height=153px; >
					</div>
					<div class="roomDetail">
						<ul>
							<li class="first">스위트 룸-${i.rnum }호</li>
							<li><a href="accommodation.do#room-info3">객실 상세보기</a></li>
							<li>더 캐럿의 스위트 객실은 거실과 침실을 구분해두었으며, 7층에 위치합니다.<br />
								  공간의 여유로운 분리로 편안하면서도 프라이빗한 이용을 위해 제공되는 객실입니다. <br />
								  분리형 샤워부스와 2개의 세면대, 전신 욕조가 있어 편안하게 휴식하실 수 있습니다. <br />
								  더 캐럿의 스위트룸은 보다 특별한 서비스로 이용객의 품격을 높입니다.</li>
						</ul>
					</div>
					<form action="reserveGo.do" class="roomRsv">
						<span class="price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${i.price}" /> 원 (1박 기준)</span>
						<input type="hidden" value="${i.price }" name="price">
						<input type="hidden" value="${ckin }" name="ckin">
						<input type="hidden" value="${ckout }" name="ckout">
						<input type="hidden" value="${i.rnum }" name="rnum">
						<input type="hidden" value="${i.rmname }" name="rmname">
						<input type="submit" class="rsvBtn" value="예약하기">
					</form>
				</div>
			</li>
			</c:if>
			<c:if test="${i.rmname eq 'Suite' and status.index==3}">
			<li>
				<div class="roomInfo">
					<div class="roomImg">
						<img src="${path}/resources/img/Hotel_sweet_img1_pix.jpg" width=260px height=153px; >
					</div>
					<div class="roomDetail">
						<ul>
							<li class="first">스위트 룸-${i.rnum }호</li>
							<li><a href="accommodation.do#room-info3">객실 상세보기</a></li>
							<li>더 캐럿의 스위트 객실은 거실과 침실을 구분해두었으며, 7층에 위치합니다.<br />
								  공간의 여유로운 분리로 편안하면서도 프라이빗한 이용을 위해 제공되는 객실입니다. <br />
								  분리형 샤워부스와 2개의 세면대, 전신 욕조가 있어 편안하게 휴식하실 수 있습니다. <br />
								  더 캐럿의 스위트룸은 보다 특별한 서비스로 이용객의 품격을 높입니다.</li>
						</ul>
					</div>
					<form action="reserveGo.do" class="roomRsv">
						<span class="price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${i.price}" /> 원 (1박 기준)</span>
						<input type="hidden" value="${i.price }" name="price">
						<input type="hidden" value="${ckin }" name="ckin">
						<input type="hidden" value="${ckout }" name="ckout">
						<input type="hidden" value="${i.rnum }" name="rnum">
						<input type="hidden" value="${i.rmname }" name="rmname">
						<input type="submit" class="rsvBtn" value="예약하기">
					</form>
				</div>
			</li>
			</c:if>
			<c:if test="${i.rmname eq 'Oceanviewsuite' and status.index==0}">
			<li>
				<div class="roomInfo">
					<div class="roomImg">
						<img src="${path}/resources/img/Hotel_sweetocean_img1_pix.jpg" width=260px height=153px; >
					</div>
					<div class="roomDetail">
						<ul>
							<li class="first">오션뷰 스위트 룸-${i.rnum }호</li>
							<li><a href="accommodation.do#room-info3">객실 상세보기</a></li>
							<li>더 캐럿의 오션뷰 스위트 객실은 8층의 고층에 위치합니다.<br />
								  공간의 여유로운 분리로 편안하면서도 프라이빗한 이용을 위해 제공되는 객실입니다. <br />
								  분리형 샤워부스와 2개의 변기, 전신 욕조가 있어 편안하게 휴식하실 수 있습니다. <br />
								  발코니를 통해 고층에서 파노라마같이 펼쳐진 아름다운 오션뷰를 감상하실 수 있습니다. <br />
								  더 캐럿의 스위트룸은 보다 특별한 서비스로 이용객의 품격을 높입니다.</li>
						</ul>
					</div>
					<form action="reserveGo.do" class="roomRsv">
						<span class="price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${i.price}" /> 원 (1박 기준)</span>
						<input type="hidden" value="${i.price }" name="price">
						<input type="hidden" value="${ckin }" name="ckin">
						<input type="hidden" value="${ckout }" name="ckout">
						<input type="hidden" value="${i.rnum }" name="rnum">
						<input type="hidden" value="${i.rmname }" name="rmname">
						<input type="submit" class="rsvBtn" value="예약하기">
					</form>
				</div>
			</li>
			</c:if>
			<c:if test="${i.rmname eq 'Oceanviewsuite' and status.index==1}">
			<li>
				<div class="roomInfo">
					<div class="roomImg">
						<img src="${path}/resources/img/Hotel_sweetocean_img2_pix.jpg" width=260px height=153px; >
					</div>
					<div class="roomDetail">
						<ul>
							<li class="first">오션뷰 스위트 룸-${i.rnum }호</li>
							<li><a href="accommodation.do#room-info3">객실 상세보기</a></li>
							<li>더 캐럿의 오션뷰 스위트 객실은 8층의 고층에 위치합니다.<br />
								  공간의 여유로운 분리로 편안하면서도 프라이빗한 이용을 위해 제공되는 객실입니다. <br />
								  분리형 샤워부스와 2개의 변기, 전신 욕조가 있어 편안하게 휴식하실 수 있습니다. <br />
								  발코니를 통해 고층에서 파노라마같이 펼쳐진 아름다운 오션뷰를 감상하실 수 있습니다. <br />
								  더 캐럿의 스위트룸은 보다 특별한 서비스로 이용객의 품격을 높입니다.</li>
						</ul>
					</div>
					<form action="reserveGo.do" class="roomRsv">
						<span class="price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${i.price}" /> 원 (1박 기준)</span>
						<input type="hidden" value="${i.price }" name="price">
						<input type="hidden" value="${ckin }" name="ckin">
						<input type="hidden" value="${ckout }" name="ckout">
						<input type="hidden" value="${i.rnum }" name="rnum">
						<input type="hidden" value="${i.rmname }" name="rmname">
						<input type="submit" class="rsvBtn" value="예약하기">
					</form>
				</div>
			</li>
			</c:if>
			<c:if test="${i.rmname eq 'Oceanviewsuite' and status.index==2}">
			<li>
				<div class="roomInfo">
					<div class="roomImg">
						<img src="${path}/resources/img/Hotel_sweetocean_img3_pix.jpg" width=260px height=153px; >
					</div>
					<div class="roomDetail">
						<ul>
							<li class="first">오션뷰 스위트 룸-${i.rnum }호</li>
							<li><a href="accommodation.do#room-info3">객실 상세보기</a></li>
							<li>더 캐럿의 오션뷰 스위트 객실은 8층의 고층에 위치합니다.<br />
								  공간의 여유로운 분리로 편안하면서도 프라이빗한 이용을 위해 제공되는 객실입니다. <br />
								  분리형 샤워부스와 2개의 변기, 전신 욕조가 있어 편안하게 휴식하실 수 있습니다. <br />
								  발코니를 통해 고층에서 파노라마같이 펼쳐진 아름다운 오션뷰를 감상하실 수 있습니다. <br />
								  더 캐럿의 스위트룸은 보다 특별한 서비스로 이용객의 품격을 높입니다.</li>
						</ul>
					</div>
					<form action="reserveGo.do" class="roomRsv">
						<span class="price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${i.price}" /> 원 (1박 기준)</span>
						<input type="hidden" value="${i.price }" name="price">
						<input type="hidden" value="${ckin }" name="ckin">
						<input type="hidden" value="${ckout }" name="ckout">
						<input type="hidden" value="${i.rnum }" name="rnum">
						<input type="hidden" value="${i.rmname }" name="rmname">
						<input type="submit" class="rsvBtn" value="예약하기">
					</form>
				</div>
			</li>
			</c:if>
			<c:if test="${i.rmname eq 'Oceanviewsuite' and status.index==3}">
			<li>
				<div class="roomInfo">
					<div class="roomImg">
						<img src="${path}/resources/img/Hotel_sweetocean_img1_pix.jpg" width=260px height=153px; >
					</div>
					<div class="roomDetail">
						<ul>
							<li class="first">오션뷰 스위트 룸-${i.rnum }호</li>
							<li><a href="accommodation.do#room-info3">객실 상세보기</a></li>
							<li>더 캐럿의 오션뷰 스위트 객실은 8층의 고층에 위치합니다.<br />
								  공간의 여유로운 분리로 편안하면서도 프라이빗한 이용을 위해 제공되는 객실입니다. <br />
								  분리형 샤워부스와 2개의 변기, 전신 욕조가 있어 편안하게 휴식하실 수 있습니다. <br />
								  발코니를 통해 고층에서 파노라마같이 펼쳐진 아름다운 오션뷰를 감상하실 수 있습니다. <br />
								  더 캐럿의 스위트룸은 보다 특별한 서비스로 이용객의 품격을 높입니다.</li>
						</ul>
					</div>
					<form action="reserveGo.do" class="roomRsv">
						<span class="price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${i.price}" /> 원 (1박 기준)</span>
						<input type="hidden" value="${i.price }" name="price">
						<input type="hidden" value="${ckin }" name="ckin">
						<input type="hidden" value="${ckout }" name="ckout">
						<input type="hidden" value="${i.rnum }" name="rnum">
						<input type="hidden" value="${i.rmname }" name="rmname">
						<input type="submit" class="rsvBtn" value="예약하기">
					</form>
				</div>
			</li>
			</c:if>
			<c:if test="${i.rmname eq 'Executive' and status.index==0}">
			<li>
				<div class="roomInfo">
					<div class="roomImg">
						<img src="${path}/resources/img/Hotel_executive_img1_pix.jpg" width=260px height=153px; >
					</div>
					<div class="roomDetail">
						<ul>
							<li class="first">이그제큐티브 룸-${i.rnum }호</li>
							<li><a href="accommodation.do#room-info5">객실 상세보기</a></li>
							<li>더 캐럿의 이큐제큐티브 객실은 10층의 고층에 위치합니다.<br />
								  공간의 여유로운 분리로 편안하면서도 프라이빗한 이용을 위해 제공되는 객실입니다. <br />
								  넓은 책상과 의자를 구비해두어 비즈니스를 하실 수 있도록 최적화하였습니다.</li>
						</ul>
					</div>
					<form action="reserveGo.do" class="roomRsv">
						<span class="price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${i.price}" /> 원 (1박 기준)</span>
						<input type="hidden" value="${i.price }" name="price">
						<input type="hidden" value="${ckin }" name="ckin">
						<input type="hidden" value="${ckout }" name="ckout">
						<input type="hidden" value="${i.rnum }" name="rnum">
						<input type="hidden" value="${i.rmname }" name="rmname">
						<input type="submit" class="rsvBtn" value="예약하기">
					</form>
				</div>
			</li>
			</c:if>
			<c:if test="${i.rmname eq 'Executive' and status.index==1}">
			<li>
				<div class="roomInfo">
					<div class="roomImg">
						<img src="${path}/resources/img/Hotel_executive_img1_pix.jpg" width=260px height=153px; >
					</div>
					<div class="roomDetail">
						<ul>
							<li class="first">이그제큐티브 룸-${i.rnum }호</li>
							<li><a href="accommodation.do#room-info5">객실 상세보기</a></li>
							<li>더 캐럿의 이큐제큐티브 객실은 10층의 고층에 위치합니다.<br />
								  공간의 여유로운 분리로 편안하면서도 프라이빗한 이용을 위해 제공되는 객실입니다. <br />
								  넓은 책상과 의자를 구비해두어 비즈니스를 하실 수 있도록 최적화하였습니다.</li>
						</ul>
					</div>
					<form action="reserveGo.do" class="roomRsv">
						<span class="price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${i.price}" /> 원 (1박 기준)</span>
						<input type="hidden" value="${i.price }" name="price">
						<input type="hidden" value="${ckin }" name="ckin">
						<input type="hidden" value="${ckout }" name="ckout">
						<input type="hidden" value="${i.rnum }" name="rnum">
						<input type="hidden" value="${i.rmname }" name="rmname">
						<input type="submit" class="rsvBtn" value="예약하기">
					</form>
				</div>
			</li>
			</c:if>
				<c:if test="${i.rmname eq 'Executive' and status.index==2}">
			<li>
				<div class="roomInfo">
					<div class="roomImg">
						<img src="${path}/resources/img/Hotel_executive_img1_pix.jpg" width=260px height=153px; >
					</div>
					<div class="roomDetail">
						<ul>
							<li class="first">이그제큐티브 룸-${i.rnum }호</li>
							<li><a href="accommodation.do#room-info5">객실 상세보기</a></li>
							<li>더 캐럿의 이큐제큐티브 객실은 10층의 고층에 위치합니다.<br />
								  공간의 여유로운 분리로 편안하면서도 프라이빗한 이용을 위해 제공되는 객실입니다. <br />
								  넓은 책상과 의자를 구비해두어 비즈니스를 하실 수 있도록 최적화하였습니다.</li>
						</ul>
					</div>
					<form action="reserveGo.do" class="roomRsv">
						<span class="price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${i.price}" /> 원 (1박 기준)</span>
						<input type="hidden" value="${i.price }" name="price">
						<input type="hidden" value="${ckin }" name="ckin">
						<input type="hidden" value="${ckout }" name="ckout">
						<input type="hidden" value="${i.rnum }" name="rnum">
						<input type="hidden" value="${i.rmname }" name="rmname">
						<input type="submit" class="rsvBtn" value="예약하기">
					</form>
				</div>
			</li>
			</c:if>
			<c:if test="${i.rmname eq 'Executive' and status.index==3}">
			<li>
				<div class="roomInfo">
					<div class="roomImg">
						<img src="${path}/resources/img/Hotel_executive_img1_pix.jpg" width=260px height=153px; >
					</div>
					<div class="roomDetail">
						<ul>
							<li class="first">이그제큐티브 룸-${i.rnum }호</li>
							<li><a href="accommodation.do#room-info5">객실 상세보기</a></li>
							<li>더 캐럿의 이큐제큐티브 객실은 10층의 고층에 위치합니다.<br />
								  공간의 여유로운 분리로 편안하면서도 프라이빗한 이용을 위해 제공되는 객실입니다. <br />
								  넓은 책상과 의자를 구비해두어 비즈니스를 하실 수 있도록 최적화하였습니다.</li>
						</ul>
					</div>
					<form action="reserveGo.do" class="roomRsv">
						<span class="price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${i.price}" /> 원 (1박 기준)</span>
						<input type="hidden" value="${i.price }" name="price">
						<input type="hidden" value="${ckin }" name="ckin">
						<input type="hidden" value="${ckout }" name="ckout">
						<input type="hidden" value="${i.rnum }" name="rnum">
						<input type="hidden" value="${i.rmname }" name="rmname">
						<input type="submit" class="rsvBtn" value="예약하기">
					</form>
				</div>
			</li>
			</c:if>
			</c:forEach>
			</c:when>
			<c:otherwise>
			 	<li><div class="descWrap">
						<p>예약 가능한 방이 없습니다.</p>
					</div>
				</li> 
			 </c:otherwise>
			</c:choose>
		</ul>
	</div>
	<!-- //rsvResult -->
</div>
<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<!-- //footer -->
</body>
</html>