<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			체크인 <input type="text" id="datepickerS" name="ckin" value="${ckin }" autocomplete='off'> 체크아웃 <input
				type="text" id="datepickerE" name="ckout" value="${ckout}" autocomplete='off'> 객실등급 <select name="rmname">
				<option value="Standard" 
					<c:if test="${reserveVO.rmname eq 'Standard'}"> selected</c:if>>스탠다드룸
				<option value="Deluxe" 
					<c:if test="${reserveVO.rmname eq 'Deluxe'}"> selected</c:if>>디럭스룸
				<option value="Suite"
					<c:if test="${reserveVO.rmname eq 'Suite'}"> selected</c:if>>스위트룸
				<option value="Oceanviewsuite"
					<c:if test="${reserveVO.rmname eq 'Oceanviewsuite'}"> selected</c:if>>오션뷰-스위트룸
				<option value="Executive"
					<c:if test="${reserveVO.rmname eq 'Executive'}"> selected</c:if>>이그제큐디브룸
			</select>
			<input type="submit" value="검색">
		</form>
	</div>
	<script>
		//달력 디자인 호출
		datePickerSet($("#datepickerS"), $("#datepickerE"), true);
	</script>
	
	<!-- //reservation -->
	
	<div class="descWrap">
		<p style="display:none;">예약을 원하시는 호텔, 날짜, 인원을 선택해주세요.</p>
	</div>
	<div class="rsvResult">
		<ul>
			<c:forEach var="i" items="${alist}">
			<c:if test="${i.rnum eq '501'}">
			<li>
				<div class="roomInfo">
					<div class="roomImg">
						<img src="${path}/resources/img/Hotel_standard_img1_pix.jpg" width=260px height=153px; >
					</div>
					<div class="roomDetail">
						<ul>
							<li class="first">스탠다드 룸-501호</li>
							<li>"아늑한 쉼터"</li>
							<li>더 캐럿의 스탠다드 객실은 아늑한 크기의 객실로 2층, 3층에 위치합니다.<br />
								  자연 채광이 들어오는 욕실은 분리형 샤워부스와 2개의 세면대, 전신 욕조가 있으며 <br />
								  어디서나 오션뷰 전망을 볼 수 있게 설계되어 아름다운 경치를 보며 쉴 수 있습니다.</li>
						</ul>
					</div>
					<form action="reserveGo.do" class="roomRsv">
						<span class="price">100,000 원</span>
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
			<c:if test="${i.rnum eq '502'}">
			<li>
				<div class="roomInfo">
					<div class="roomImg">
						<img src="${path}/resources/img/Hotel_standard_img2_pix.jpg" width=260px height=153px; >
					</div>
					<div class="roomDetail">
						<ul>
							<li class="first">스탠다드 룸-502호</li>
							<li>"아늑한 쉼터"</li>
							<li>더 캐럿의 스탠다드 객실은 아늑한 크기의 객실로 2층, 3층에 위치합니다.<br />
								  자연 채광이 들어오는 욕실은 분리형 샤워부스와 2개의 세면대, 전신 욕조가 있으며 <br />
								  어디서나 오션뷰 전망을 볼 수 있게 설계되어 아름다운 경치를 보며 쉴 수 있습니다.</li>
						</ul>
					</div>
					<form action="reserveGo.do" class="roomRsv">
						<span class="price">150,000 원</span>
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
			<c:if test="${i.rnum eq '503'}">
			<li>
				<div class="roomInfo">
					<div class="roomImg">
						<img src="${path}/resources/img/Hotel_standard_img3_pix.jpg" width=260px height=153px; >
					</div>
					<div class="roomDetail">
						<ul>
							<li class="first">스탠다드 룸-503호</li>
							<li>"아늑한 쉼터"</li>
							<li>더 캐럿의 스탠다드 객실은 아늑한 크기의 객실로 2층, 3층에 위치합니다.<br />
								  자연 채광이 들어오는 욕실은 분리형 샤워부스와 2개의 세면대, 전신 욕조가 있으며 <br />
								  어디서나 오션뷰 전망을 볼 수 있게 설계되어 아름다운 경치를 보며 쉴 수 있습니다.</li>
						</ul>
					</div>
					<form action="reserveGo.do" class="roomRsv">
						<span class="price">150,000 원</span>
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
			<c:if test="${i.rnum eq '601'}">
			<li>
				<div class="roomInfo">
					<div class="roomImg">
						<img src="${path}/resources/img/Hotel_deluxe_img1_pix.jpg" width=260px height=153px; >
					</div>
					<div class="roomDetail">
						<ul>
							<li class="first">디럭스 룸-601호</li>
							<li>"편안한 휴식"</li>
							<li>더 캐럿의 디럭스 객실은 보다 넓은 공간이며 2층과 3층에 위치합니다.<br />
								  분리형 샤워부스와 2개의 세면대, 전신 욕조가 있어 편안하게 휴식하실 수 있습니다. <br />
								  발코니를 통해 아름다운 오션뷰 혹은 마운틴뷰를 감상하며 편안하게 지내실 수 있습니다.</li>
						</ul>
					</div>
					<form action="reserveGo.do" class="roomRsv">
						<span class="price">200,000 원</span>
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
			<c:if test="${i.rnum eq '602'}">
			<li>
				<div class="roomInfo">
					<div class="roomImg">
						<img src="${path}/resources/img/Hotel_deluxe_img2_pix.jpg" width=260px height=153px; >
					</div>
					<div class="roomDetail">
						<ul>
							<li class="first">디럭스 룸-602호</li>
							<li>"편안한 휴식"</li>
							<li>더 캐럿의 디럭스 객실은 보다 넓은 공간이며 2층과 3층에 위치합니다.<br />
								  분리형 샤워부스와 2개의 세면대, 전신 욕조가 있어 편안하게 휴식하실 수 있습니다. <br />
								  발코니를 통해 아름다운 오션뷰 혹은 마운틴뷰를 감상하며 편안하게 지내실 수 있습니다.</li>
						</ul>
					</div>
					<form action="reserveGo.do" class="roomRsv">
						<span class="price">250,000 원</span>
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
			<c:if test="${i.rnum eq '603'}">
			<li>
				<div class="roomInfo">
					<div class="roomImg">
						<img src="${path}/resources/img/Hotel_deluxe_img3_pix.jpg" width=260px height=153px; >
					</div>
					<div class="roomDetail">
						<ul>
							<li class="first">디럭스 룸-603호</li>
							<li>"편안한 휴식"</li>
							<li>더 캐럿의 디럭스 객실은 보다 넓은 공간이며 2층과 3층에 위치합니다.<br />
								  분리형 샤워부스와 2개의 세면대, 전신 욕조가 있어 편안하게 휴식하실 수 있습니다. <br />
								  발코니를 통해 아름다운 오션뷰 혹은 마운틴뷰를 감상하며 편안하게 지내실 수 있습니다.</li>
						</ul>
					</div>
					<form action="reserveGo.do" class="roomRsv">
						<span class="price">250,000 원</span>
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
			<c:if test="${i.rnum eq '701'}">
			<li>
				<div class="roomInfo">
					<div class="roomImg">
						<img src="${path}/resources/img/Hotel_sweet_img1_pix.jpg" width=260px height=153px; >
					</div>
					<div class="roomDetail">
						<ul>
							<li class="first">스위트 룸-701호</li>
							<li>"공간의 여유"</li>
							<li>더 캐럿의 스위트 객실은 거실과 침실을 구분해두었으며, 4층, 5층에 위치합니다.<br />
								  공간의 여유로운 분리로 편안하면서도 프라이빗한 이용을 위해 제공되는 객실입니다. <br />
								  분리형 샤워부스와 2개의 세면대, 전신 욕조가 있어 편안하게 휴식하실 수 있습니다. <br />
								  더 캐럿의 스위트룸은 보다 특별한 서비스로 이용객의 품격을 높입니다.</li>
						</ul>
					</div>
					<form action="reserveGo.do" class="roomRsv">
						<span class="price">300,000 원</span>
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
			<c:if test="${i.rnum eq '702'}">
			<li>
				<div class="roomInfo">
					<div class="roomImg">
						<img src="${path}/resources/img/Hotel_sweet_img2_pix.jpg" width=260px height=153px; >
					</div>
					<div class="roomDetail">
						<ul>
							<li class="first">스위트 룸-702호</li>
							<li>"공간의 여유"</li>
							<li>더 캐럿의 스위트 객실은 거실과 침실을 구분해두었으며, 4층, 5층에 위치합니다.<br />
								  공간의 여유로운 분리로 편안하면서도 프라이빗한 이용을 위해 제공되는 객실입니다. <br />
								  분리형 샤워부스와 2개의 세면대, 전신 욕조가 있어 편안하게 휴식하실 수 있습니다. <br />
								  더 캐럿의 스위트룸은 보다 특별한 서비스로 이용객의 품격을 높입니다.</li>
						</ul>
					</div>
					<form action="reserveGo.do" class="roomRsv">
						<span class="price">350,000 원</span>
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
			<c:if test="${i.rnum eq '703'}">
			<li>
				<div class="roomInfo">
					<div class="roomImg">
						<img src="${path}/resources/img/Hotel_sweet_img3_pix.jpg" width=260px height=153px; >
					</div>
					<div class="roomDetail">
						<ul>
							<li class="first">스위트 룸-703호</li>
							<li>"공간의 여유"</li>
							<li>더 캐럿의 스위트 객실은 거실과 침실을 구분해두었으며, 4층, 5층에 위치합니다.<br />
								  공간의 여유로운 분리로 편안하면서도 프라이빗한 이용을 위해 제공되는 객실입니다. <br />
								  분리형 샤워부스와 2개의 세면대, 전신 욕조가 있어 편안하게 휴식하실 수 있습니다. <br />
								  더 캐럿의 스위트룸은 보다 특별한 서비스로 이용객의 품격을 높입니다.</li>
						</ul>
					</div>
					<form action="reserveGo.do" class="roomRsv">
						<span class="price">350,000 원</span>
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
			<c:if test="${i.rnum eq '801'}">
			<li>
				<div class="roomInfo">
					<div class="roomImg">
						<img src="${path}/resources/img/Hotel_sweetocean_img1_pix.jpg" width=260px height=153px; >
					</div>
					<div class="roomDetail">
						<ul>
							<li class="first">오션뷰 스위트 룸-801호</li>
							<li>"탁트인 오션뷰"</li>
							<li>더 캐럿의 오션뷰 스위트 객실은 6층, 9층의 고층에 위치합니다.<br />
								  공간의 여유로운 분리로 편안하면서도 프라이빗한 이용을 위해 제공되는 객실입니다. <br />
								  분리형 샤워부스와 2개의 변기, 전신 욕조가 있어 편안하게 휴식하실 수 있습니다. <br />
								  발코니를 통해 고층에서 파노라마같이 펼쳐진 아름다운 오션뷰를 감상하실 수 있습니다. <br />
								  더 캐럿의 스위트룸은 보다 특별한 서비스로 이용객의 품격을 높입니다.</li>
						</ul>
					</div>
					<form action="reserveGo.do" class="roomRsv">
						<span class="price">400,000 원</span>
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
			<c:if test="${i.rnum eq '802'}">
			<li>
				<div class="roomInfo">
					<div class="roomImg">
						<img src="${path}/resources/img/Hotel_sweetocean_img2_pix.jpg" width=260px height=153px; >
					</div>
					<div class="roomDetail">
						<ul>
							<li class="first">오션뷰 스위트 룸-802호</li>
							<li>"탁트인 오션뷰"</li>
							<li>더 캐럿의 오션뷰 스위트 객실은 6층, 9층의 고층에 위치합니다.<br />
								  공간의 여유로운 분리로 편안하면서도 프라이빗한 이용을 위해 제공되는 객실입니다. <br />
								  분리형 샤워부스와 2개의 변기, 전신 욕조가 있어 편안하게 휴식하실 수 있습니다. <br />
								  발코니를 통해 고층에서 파노라마같이 펼쳐진 아름다운 오션뷰를 감상하실 수 있습니다. <br />
								  더 캐럿의 스위트룸은 보다 특별한 서비스로 이용객의 품격을 높입니다.</li>
						</ul>
					</div>
					<form action="reserveGo.do" class="roomRsv">
						<span class="price">450,000 원</span>
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
			<c:if test="${i.rnum eq '803'}">
			<li>
				<div class="roomInfo">
					<div class="roomImg">
						<img src="${path}/resources/img/Hotel_sweetocean_img3_pix.jpg" width=260px height=153px; >
					</div>
					<div class="roomDetail">
						<ul>
							<li class="first">오션뷰 스위트 룸-803호</li>
							<li>"탁트인 오션뷰"</li>
							<li>더 캐럿의 오션뷰 스위트 객실은 6층, 9층의 고층에 위치합니다.<br />
								  공간의 여유로운 분리로 편안하면서도 프라이빗한 이용을 위해 제공되는 객실입니다. <br />
								  분리형 샤워부스와 2개의 변기, 전신 욕조가 있어 편안하게 휴식하실 수 있습니다. <br />
								  발코니를 통해 고층에서 파노라마같이 펼쳐진 아름다운 오션뷰를 감상하실 수 있습니다. <br />
								  더 캐럿의 스위트룸은 보다 특별한 서비스로 이용객의 품격을 높입니다.</li>
						</ul>
					</div>
					<form action="reserveGo.do" class="roomRsv">
						<span class="price">450,000 원</span>
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
			<c:if test="${i.rnum eq '1001'}">
			<li>
				<div class="roomInfo">
					<div class="roomImg">
						<img src="${path}/resources/img/Hotel_executive_img1_pix.jpg" width=260px height=153px; >
					</div>
					<div class="roomDetail">
						<ul>
							<li class="first">이그제큐티브 룸-1001호</li>
							<li>"프라이빗한 비즈니스"</li>
							<li>더 캐럿의 이큐제큐티브 객실은 7층과 8층의 고층에 위치합니다.<br />
								  공간의 여유로운 분리로 편안하면서도 프라이빗한 이용을 위해 제공되는 객실입니다. <br />
								  넓은 책상과 의자를 구비해두어 비즈니스를 하실 수 있도록 최적화하였습니다.</li>
						</ul>
					</div>
					<form action="reserveGo.do" class="roomRsv">
						<span class="price">1,000,000 원</span>
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
		</ul>
	</div>
	<!-- //rsvResult -->
</div>
	
<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<!-- //footer -->
</body>
</html>