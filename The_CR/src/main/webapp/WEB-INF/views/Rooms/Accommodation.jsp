<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="target-densitydpi=device-dpi, user-scalable=0, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, width=device-width">
<title>객실 | The C.R.</title>
	<link rel="stylesheet" type="text/css" href="resources/css/Accommodation.css" />
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src="resources/js/jquery-3.3.1.js"></script>
	<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
	<script type="text/javascript" src="resources/js/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src="resources/js/Accommodation.js"></script>
</head>
<body>

<div class="all-wr">
	<!-- header -->
	<%@ include file="/WEB-INF/views/include/header.jsp" %>
	<!-- //header -->

	<div class="whole-wr" id="whole-wr">
	
		<!-- 사이드메뉴바 -->
		<div class="sideMenu-wr" id="">
			<div class="sideMenu" id="">
				<div id="sideMenu-img">
					<div class="sidemenu" id="">
						<span class="sideMenu-tit" id="sideMenu-tit">ACCOMMODATIONS</span>
						<div class="sideMenu-atxt-wr" id="sideMenu-txt">
							<ul class="sideMenu-atxt" id="sideMenu-atxt">
								<li class="on"><a href="#room-info1"><span class="sideMenu-text">스탠다드룸</span></a></li>
								<li ><a href="#room-info2"><span class="sideMenu-text">디럭스룸</span></a></li>
								<li ><a href="#room-info3"><span class="sideMenu-text">스위트룸</span></a></li>
								<li ><a href="#room-info4"><span class="sideMenu-text">오션뷰-스위트룸</span></a></li>
								<li id="last-atext"><a href="#room-info5"><span class="sideMenu-text">이그제큐티브룸</span></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- Intro -->
		<div class="intro-wr" id="intro-wr">
			<div class="intro">
				<div class="intro-tit" id=intro-tit>
					<p>객실</p>
				</div>
				<div class="intro-cont" id="intro-cont">
					<p class="intro-slogan" id="intro-slogan">
					더 캐럿의 모든 객실에는 프라이빗 발코니가 갖추어져 있어 <br>
					오션뷰 전망을 마음껏 감상할 수 있습니다. <br>
					보다 넓은 객실을 제공하여 편안하게 휴식하실 수 있도록 최선을 다하고 있습니다.
					</p>
				</div>
			</div>
		</div>
		
		<!-- 중간 사진 -->
		<div class="middleImg-wr" id="">
			<div id="middleImg"></div>
		</div>
		
		<!-- 호텔 운영 정책 -->
		<div class="policies-wr" id="">
			<div class="policies">
				<div class="policies-tit" id="">POLICIES</div>
				<div class="policies-cont">
					<div id="policies-cont1">
						<img src="${path}/resources/img/check-30px-iconmons.png" alt="" />&nbsp;
						<em class="polside-tit">체크인/체크아웃</em>
						<br />
						<br />
						<ul class="polside-cont">
							<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;체크인 시간 : 오후 2시 이후</li>
							<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;체크아웃 시간 : 오후 12시 이전</li>
						</ul>
						<br />
						<p><img src="${path}/resources/img/warning-24px-iconmons.png" alt="" />&nbsp;호텔 내 애완동물 반입금지</p>
					</div>
					<div id="policies-cont2">
						<img src="${path}/resources/img/wifi-30px-iconmons.png" alt="" />&nbsp;
						<em class="polside-tit">객실 내 인터넷</em>
						<br />
						<br />
						<ul class="polside-cont">
							<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;스탠다드 인터넷 : 5,500원</li>
							<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;프리미엄 인터넷 : 11,000원(VAT포함)</li>
						</ul>
						<br />
						<p><img src="${path}/resources/img/warning-24px-iconmons.png" alt="" />&nbsp;더 캐럿 회원일 경우, 스탠다드 인터넷을 <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;무료로 이용할 수 있습니다.</p><br />
						<p><img src="${path}/resources/img/warning-24px-iconmons.png" alt="" />&nbsp;로비, 레스토랑 및 공공장소에서는 <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;무료로 이용이 가능합니다.</p>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 객실 정보 안내-->
		<div class="info-wr" id="">
			<div class="info" id="">
				<!-- 스탠다드룸 -->
				<div class="room-info" id="room-info1">
					<!-- 객실이름 -->
					<div class="room-tit" id="main-room-tit"><img src="${path}/resources/img/circle2-32px-iconmons.png" alt="" />&nbsp;스탠다드룸</div>
					<!-- 객실사진 슬라이더-->
					<div class="room-img-wr" id="">
						<div class="room-img-container">
							<ul class="slider-container" id="slider">
								<li class="slide"><img src="${path}/resources/img/Hotel_standard_img1_pix.jpg" alt="" /><span>1</span></li>
								<li class="slide"><img src="${path}/resources/img/Hotel_standard_img2_pix.jpg" alt="" /><span>2</span></li>
								<li class="slide"><img src="${path}/resources/img/Hotel_standard_img3_pix.jpg" alt=""/><span>3</span></li>
							</ul>
							<p class="pager">
								<span class="span active" data-idx="0">1</span>
								<span class="span" data-idx="1">2</span>
								<span class="span" data-idx="2">3</span>
							</p>
							<a href="#room-info1" class="prev" >1</a>
							<a href="#room-info1" class="next" >1</a>
						</div>
					</div>
					<!-- 객실정보 -->
					<div class="room-info-wr" id="">
						<div class="room-info-intro">
							<p class="room-intro-title"><i>"아늑한 쉼터"</i></p>
							<div class="room-intro-cont-wr">
								<p class="room-intro-cont">더 캐럿의 스탠다드 객실은 아늑한 크기의 객실로 2층, 3층에 위치합니다.<br />
								  자연 채광이 들어오는 욕실은 분리형 샤워부스와 2개의 세면대, 전신 욕조가 있으며 <br />
								  어디서나 오션뷰 전망을 볼 수 있게 설계되어 아름다운 경치를 보며 쉴 수 있습니다.
								</p>
								<div class="resv-wr"><a href="res.do"><img src="${path}/resources/img/calender-24px-iconmons.png" alt="" />&nbsp;&nbsp;<span class="resvbts">예약하기</span></a></div>
							</div>
						</div>
						<div class="room-cont-wr">
							<div class="room-cont">
								<h4 class="room-tit" id="side-room-tit"><img src="${path}/resources/img/circle-30px-iconmons.png" alt="" />&nbsp;객실정보</h4>
								<ul class="room-cont1">
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;21평(70sqm, 발코니 포함) 스탠다드 객실</li>
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;무선 인터넷 액세스</li>
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;오션뷰 또는 마운틴뷰 전망</li>
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;미니바 및 네스프레소 머신</li>
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;티 테이블과 의자가 있는 프라이빗 발코니</li>
								</ul>
								<ul class="room-cont2">
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;개인 금고</li>
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;2개의 세면대, 전신 욕조, 분리형 샤워시설</li>
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;목욕가운</li>
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;LED 49인치 평면 TV</li>
								</ul>
							</div>
							<div id="room-cont-warning">
								<p><img src="${path}/resources/img/warning-24px-iconmons.png" alt="" />&nbsp;객실 투숙 최대 3인 까지</p><br />
								<p><img src="${path}/resources/img/warning-24px-iconmons.png" alt="" />&nbsp;3번째 성인 투숙객의 경우, 55,000원 (VAT 포함) 부과</p>
							</div>
						</div>
					</div>
				</div>
				<!-- 디럭스룸 -->
				<div class="room-info" id="room-info2">
					<!-- 객실이름 -->
					<div class="room-tit" id="main-room-tit"><img src="${path}/resources/img/circle2-32px-iconmons.png" alt="" />&nbsp;디럭스룸</div>
					<!-- 객실사진 슬라이더-->
					<div class="room-img-wr" id="">
						<div class="room-img-container">
							<ul class="slider-container" id="slider">
								<li class="slide"><img src="${path}/resources/img/Hotel_deluxe_img1_pix.jpg" alt="" /><span>1</span></li>
								<li class="slide"><img src="${path}/resources/img/Hotel_deluxe_img2_pix.jpg" alt="" /><span>2</span></li>
								<li class="slide"><img src="${path}/resources/img/Hotel_deluxe_img3_pix.jpg" alt=""/><span>3</span></li>
							</ul>
							<p class="pager">
								<span class="span active" data-idx="3">4</span>
								<span class="span" data-idx="4">5</span>
								<span class="span" data-idx="5">6</span>
							</p>
							<a href="#room-info2" class="prev" >2</a>
							<a href="#room-info2" class="next" >2</a>
						</div>
					</div>
					<!-- 객실정보 -->
					<div class="room-info-wr" id="">
						<div class="room-info-intro">
							<p class="room-intro-title"><i>"편안한 휴식"</i></p>
							<div class="room-intro-cont-wr">
								<p class="room-intro-cont">더 캐럿의 디럭스 객실은 보다 넓은 공간이며 2층과 3층에 위치합니다.<br />
								  분리형 샤워부스와 2개의 세면대, 전신 욕조가 있어 편안하게 휴식하실 수 있습니다. <br />
								  발코니를 통해 아름다운 오션뷰 혹은 마운틴뷰를 감상하며 편안하게 지내실 수 있습니다.
								</p>
								<div class="resv-wr"><a href="res.do"><img src="${path}/resources/img/calender-24px-iconmons.png" alt="" />&nbsp;&nbsp;<span class="resvbts">예약하기</span></a></div>
							</div>
						</div>
						<div class="room-cont-wr">
							<div class="room-cont">
								<h4 class="room-tit" id="side-room-tit"><img src="${path}/resources/img/circle-30px-iconmons.png" alt="" />&nbsp;객실정보</h4>
								<ul class="room-cont1">
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;28평(92sqm, 발코니 포함) 디럭스 객실</li>
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;무선 인터넷 액세스</li>
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;오션뷰 또는 마운틴뷰 전망</li>
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;미니바 및 네스프레소 머신</li>
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;티 테이블과 의자가 있는 프라이빗 발코니</li>
								</ul>
								<ul class="room-cont2">
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;개인 금고</li>
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;2개의 세면대, 전신 욕조, 분리형 샤워시설</li>
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;목욕가운</li>
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;LED 49인치 평면 TV</li>
								</ul>
							</div>
							<div id="room-cont-warning">
								<p><img src="${path}/resources/img/warning-24px-iconmons.png" alt="" />&nbsp;객실 투숙 최대 3인 까지</p><br />
								<p><img src="${path}/resources/img/warning-24px-iconmons.png" alt="" />&nbsp;3번째 성인 투숙객의 경우, 55,000원 (VAT 포함) 부과</p>
							</div>
						</div>
					</div>
				</div>
				<!-- 스위트룸 -->
				<div class="room-info" id="room-info3">
					<!-- 객실이름 -->
					<div class="room-tit" id="main-room-tit"><img src="${path}/resources/img/circle2-32px-iconmons.png" alt="" />&nbsp;스위트룸</div>
					<!-- 객실사진 슬라이더-->
					<div class="room-img-wr" id="">
						<div class="room-img-container">
							<ul class="slider-container" id="slider">
								<li class="slide"><img src="${path}/resources/img/Hotel_sweet_img1_pix.jpg" alt="" /><span>1</span></li>
								<li class="slide"><img src="${path}/resources/img/Hotel_sweet_img2_pix.jpg" alt="" /><span>2</span></li>
								<li class="slide"><img src="${path}/resources/img/Hotel_sweet_img3_pix.jpg" alt=""/><span>3</span></li>
							</ul>
							<p class="pager">
								<span class="span active" data-idx="6">7</span>
								<span class="span" data-idx="7">8</span>
								<span class="span" data-idx="8">9</span>
							</p>
							<a href="#room-info3" class="prev" >3</a>
							<a href="#room-info3" class="next" >3</a>
						</div>
					</div>
					<!-- 객실정보 -->
					<div class="room-info-wr">
						<div class="room-info-intro">
							<p class="room-intro-title"><i>"공간의 여유"</i></p>
							<div class="room-intro-cont-wr">
								<p class="room-intro-cont">더 캐럿의 스위트 객실은 거실과 침실을 구분해두었으며, 4층, 5층에 위치합니다.<br />
								  공간의 여유로운 분리로 편안하면서도 프라이빗한 이용을 위해 제공되는 객실입니다. <br />
								  분리형 샤워부스와 2개의 세면대, 전신 욕조가 있어 편안하게 휴식하실 수 있습니다. <br />
								  더 캐럿의 스위트룸은 보다 특별한 서비스로 이용객의 품격을 높입니다.
								</p>
								<div class="resv-wr"><a href="res.do"><img src="${path}/resources/img/calender-24px-iconmons.png" alt="" />&nbsp;&nbsp;<span class="resvbts">예약하기</span></a></div>
							</div>
						</div>
						<div class="room-cont-wr" id="room-cont-wr-s">
							<div class="room-cont">
								<h4 class="room-tit" id="side-room-tit"><img src="${path}/resources/img/circle-30px-iconmons.png" alt="" />&nbsp;객실정보</h4>
								<ul class="room-cont1">
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;36평(120sqm, 발코니 포함) 스위트 객실</li>
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;무선 인터넷 액세스</li>
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;오션뷰 전망</li>
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;미니바 및 네스프레소 머신</li>
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;티 테이블과 의자가 있는 프라이빗 발코니</li>
								</ul>
								<ul class="room-cont2">
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;개인 금고</li>
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;2개의 세면대, 전신 욕조, 분리형 샤워시설</li>
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;목욕가운</li>
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;거실과 침실에 위치한 LED 49인치 평면 TV</li>
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;프라이빗 체크인/체크아웃</li>
								</ul>
							</div>
							<div id="room-cont-warning">
								<p><img src="${path}/resources/img/warning-24px-iconmons.png" alt="" />&nbsp;10F 맥퀸즈 풀, 사우나 무료로 이용 가능</p><br />
							</div>
						</div>
					</div>
				</div>
				<!-- 오션뷰 - 스위트룸 -->
				<div class="room-info" id="room-info4">
					<!-- 객실이름 -->
					<div class="room-tit" id="main-room-tit"><img src="${path}/resources/img/circle2-32px-iconmons.png" alt="" />&nbsp;오션뷰-스위트룸</div>
					<!-- 객실사진 슬라이더-->
					<div class="room-img-wr" id="">
						<div class="room-img-container">
							<ul class="slider-container" id="slider">
								<li class="slide"><img src="${path}/resources/img/Hotel_sweetocean_img1_pix.jpg" alt="" /><span>1</span></li>
								<li class="slide"><img src="${path}/resources/img/Hotel_sweetocean_img2_pix.jpg" alt="" /><span>2</span></li>
								<li class="slide"><img src="${path}/resources/img/Hotel_sweetocean_img3_pix.jpg" alt=""/><span>3</span></li>
							</ul>
							<p class="pager">
								<span class="span active" data-idx="9">10</span>
								<span class="span" data-idx="10">11</span>
								<span class="span" data-idx="11">12</span>
							</p>
							<a href="#room-info4" class="prev" >4</a>
							<a href="#room-info4" class="next" >4</a>
						</div>
					</div>
					<!-- 객실정보 -->
					<div class="room-info-wr" id="">
						<div class="room-info-intro">
							<p class="room-intro-title"><i>"탁트인 오션뷰"</i></p>
							<div class="room-intro-cont-wr">
								<p class="room-intro-cont">더 캐럿의 오션뷰 스위트 객실은 6층, 9층의 고층에 위치합니다.<br />
								  공간의 여유로운 분리로 편안하면서도 프라이빗한 이용을 위해 제공되는 객실입니다. <br />
								  분리형 샤워부스와 2개의 변기, 전신 욕조가 있어 편안하게 휴식하실 수 있습니다. <br />
								  발코니를 통해 고층에서 파노라마같이 펼쳐진 아름다운 오션뷰를 감상하실 수 있습니다. <br />
								  더 캐럿의 스위트룸은 보다 특별한 서비스로 이용객의 품격을 높입니다. 
								</p>
								<div class="resv-wr"><a href="res.do"><img src="${path}/resources/img/calender-24px-iconmons.png" alt="" />&nbsp;&nbsp;<span class="resvbts">예약하기</span></a></div>
							</div>
						</div>
						<div class="room-cont-wr" id="room-cont-wr-s">
							<div class="room-cont">
								<h4 class="room-tit" id="side-room-tit"><img src="${path}/resources/img/circle-30px-iconmons.png" alt="" />&nbsp;객실정보</h4>
								<ul class="room-cont1">
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;36평(120sqm, 발코니 포함) 스위트 객실</li>
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;무선 인터넷 액세스</li>
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;오션뷰 전망</li>
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;미니바 및 네스프레소 머신</li>
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;티 테이블과 의자가 있는 프라이빗 발코니</li>
								</ul>
								<ul class="room-cont2">
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;개인 금고</li>
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;2개의 세면대, 전신 욕조, 분리형 샤워시설</li>
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;목욕가운</li>
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;거실과 침실에 위치한 LED 49인치 평면 TV</li>
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;프라이빗 체크인/체크아웃</li>
								</ul>
							</div>
							<div id="room-cont-warning">
								<p><img src="${path}/resources/img/warning-24px-iconmons.png" alt="" />&nbsp;10F 맥퀸즈 풀, 사우나 무료로 이용 가능</p><br />
							</div>
						</div>
					</div>
				</div>
				<!-- 이그제큐티브룸 -->
				<div class="room-info" id="room-info5">
					<!-- 객실이름 -->
					<div class="room-tit" id="main-room-tit"><img src="${path}/resources/img/circle2-32px-iconmons.png" alt="" />&nbsp;이그제큐티브룸</div>
					<!-- 객실사진 슬라이더-->
					<div class="room-img-wr" id="">
						<div class="room-img-container">
							<ul class="slider-container" id="slider">
								<li class="slide"><img src="${path}/resources/img/Hotel_executive_img1_pix.jpg" alt="" /><span>1</span></li>
								<li class="slide"><img src="${path}/resources/img/Hotel_executive_img2_pix.jpg" alt="" /><span>2</span></li>
								<li class="slide"><img src="${path}/resources/img/Hotel_executive_img3_pix.jpg" alt=""/><span>3</span></li>
							</ul>
							<p class="pager">
								<span class="span active" data-idx="12">13</span>
								<span class="span" data-idx="13">14</span>
								<span class="span" data-idx="14">15</span>
							</p>
							<a href="#room-info5" class="prev" >5</a>
							<a href="#room-info5" class="next" >5</a>
						</div>
					</div>
					<!-- 객실정보 -->
					<div class="room-info-wr" id="">
						<div class="room-info-intro">
							<p class="room-intro-title"><i>"프라이빗한 비즈니스"</i></p>
							<div class="room-intro-cont-wr">
								<p class="room-intro-cont">더 캐럿의 이큐제큐티브 객실은 7층과 8층의 고층에 위치합니다.<br />
								  공간의 여유로운 분리로 편안하면서도 프라이빗한 이용을 위해 제공되는 객실입니다. <br />
								  넓은 책상과 의자를 구비해두어 비즈니스를 하실 수 있도록 최적화하였습니다. <br />
								</p>
								<div class="resv-wr"><a href="res.do"><img src="${path}/resources/img/calender-24px-iconmons.png" alt="" />&nbsp;&nbsp;<span class="resvbts">예약하기</span></a></div>
							</div>
						</div>
						<div class="room-cont-wr">
							<div class="room-cont">
								<h4 class="room-tit" id="side-room-tit"><img src="${path}/resources/img/circle-30px-iconmons.png" alt="" />&nbsp;객실정보</h4>
								<ul class="room-cont1">
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;28평(92sqm, 발코니 포함) 이그제큐티브 객실</li>
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;무선 인터넷 액세스</li>
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;넓은 책상과 의자</li>
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;미니바 및 네스프레소 머신</li>
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;티 테이블과 의자가 있는 프라이빗 발코니</li>
								</ul>
								<ul class="room-cont2">
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;개인 금고</li>
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;2개의 세면대, 전신 욕조, 분리형 샤워시설</li>
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;목욕가운</li>
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;거실과 침실에 위치한 LED 49인치 평면 TV</li>
									<li><img src="${path}/resources/img/dash-20px-iconmons.png" alt="" />&nbsp;프라이빗 체크인/체크아웃</li>
								</ul>
							</div>
							<div id="room-cont-warning">
								<p><img src="${path}/resources/img/warning-24px-iconmons.png" alt="" />&nbsp;객실 투숙 최대 3인 까지</p><br />
								<p><img src="${path}/resources/img/warning-24px-iconmons.png" alt="" />&nbsp;3번째 성인 투숙객의 경우, 55,000원 (VAT 포함) 부과</p> <br />
							</div>
						</div>
					</div>
				</div>
				<!-- top button -->
					<div class="topbts" id=""><a href="" class="topbts"><img src="${path}/resources/img/TOP-64px-iconmons.png" alt="" /></a></div>
			</div>
		</div>
	</div>
	
	<!-- footer -->
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
	<!-- //footer -->
</div>
</body>
</html>