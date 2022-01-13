<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta content="target-densitydpi=device-dpi, user-scalable=0, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, width=device-width">
<title>프로모션 | The C.R.</title>
	<link rel="stylesheet" href="resources/css/Promotion.css" />
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="resources/js/jquery-3.3.1.js"></script>
	<script src="resources/js/Promotion.js"></script>
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
						<span class="sideMenu-tit" id="sideMenu-tit">PROMOTION</span>
						<div class="sideMenu-atxt-wr" id="sideMenu-txt">
							<ul class="sideMenu-atxt" id="sideMenu-atxt">
								<li id="on1"><a href="promotion.do"><span class="sideMenu-text" id="onn">프로모션&패키지</span></a></li>
								<li id="last-atext"><a href="around.do"><span class="sideMenu-text">주변 즐길거리&볼거리</span></a></li>
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
					<p>프로모션&패키지</p>
				</div>
			</div>
		</div>
		<!-- Content -->
		<div class="content-wr">
			<div class="content-container">
				<div class="contbts-wr">
					<ul class="contbts">
						<li class="contbts-li"><a href="#cont-Room"><span>Room</span></a></li>
						<li class="contbts-li"><a href="#cont-FB"><span>F&B</span></a></li>
						<li class="contbts-li" id="last-atext"><a href="#cont-Event"><span>Event</span></a></li>
					</ul>
				</div>
				<div class="cont-wr">
					<div class="cont1" id="cont-Room">
						<div class="cont-title">
							<span><i>객실 | 'Stay Longer' 패키지</i></span>
						</div>
						<div class="cont-slogan">투숙은 더욱 길게! 가격은 더욱 저렴하게!</div>
						<div class="cont-content">
							<div class="cont-img">
								<img src="${path}/resources/img/Hotel_in_img_pix.jpg" alt="" />
							</div>
							<div class="cont-cont">
								<div class="cont-simple">
									<ul class="simple">
										<li><img src="${path}/resources/img/time-32px-iconmons.png" alt="" />&nbsp;기간 : 2021년 9월 1일부터</li>
										<li><img src="${path}/resources/img/dallar-32px-iconmons.png" alt="" />&nbsp;가격 : 4박이상 연박 시, 조식 패키지 25% 할인</li>
										<li><img src="${path}/resources/img/tele-32px-iconmons.png" alt="" />&nbsp;문의 : 더 캐럿 000-000-0000</li>
									</ul>
								</div>
								<div class="cont-deep">
									<ul class="deep">
										<li id="deep1">여유로운 휴가를 계획하고 계신가요?</li>
										<li id="deep2">'Stay Longer' 패키지로 온전한 휴식을</li>
										<li id="deep2">합리적인 가격에 제공합니다!</li>
										<li><img src="${path}/resources/img/circle-24px-iconmons.png" alt="" />&nbsp;예약기간 : 2021년 9월 1일부터</li>
										<li><img src="${path}/resources/img/circle-24px-iconmons.png" alt="" />&nbsp;패키지 혜택 : 4박이상 연박 시, 조식 패키지 25% 할인</li>
										<li><img src="${path}/resources/img/circle-24px-iconmons.png" alt="" />&nbsp;예약문의 : 더 캐럿 000-000-0000</li>
										<li id="deep3"><a href="res.do"><span><b>>> 예약 페이지 바로가기</b></span></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="cont1" id="cont-FB">
						<div class="cont-title">
							<span><i>다모임 | 제주 흑돼지 요리</i></span>
						</div>
						<div class="cont-slogan">다모임에서 즐기는 제주 특산 흑돼지!</div>
						<div class="cont-content">
							<div class="cont-img">
								<img src="${path}/resources/img/jamon_pix.jpg" alt="" />
							</div>
							<div class="cont-cont">
								<div class="cont-simple">
									<ul class="simple">
										<li><img src="${path}/resources/img/time-32px-iconmons.png" alt="" />&nbsp;기간 : 2021년 9월 1일-9월 30일</li>
										<li><img src="${path}/resources/img/dallar-32px-iconmons.png" alt="" />&nbsp;가격 : -</li>
										<li><img src="${path}/resources/img/tele-32px-iconmons.png" alt="" />&nbsp;문의 : 더 캐럿 000-000-0000</li>
									</ul>
								</div>
								<div class="cont-deep" id="cont-deep2">
									<ul class="deep">
										<li id="deep1">제주도 특산품 흑돼지</li>
										<li id="deep2">제주 흑돼지로 만든 세계 4대 진미 ‘하몽’의 풍미와</li>
										<li id="deep2">다양한 지중해 특선 요리를 즐겨보세요!</li>
										<li><img src="..${path}/resources/img/circle-24px-iconmons.png" alt="" />&nbsp;운영기간 : 2021년 9월 1일-9월 30일</li>
										<li><img src="..${path}/resources/img/circle-24px-iconmons.png" alt="" />&nbsp;운영시간 : 점심(매일) 12:00 - 15:00
										<li class="deep4">&nbsp;&nbsp;&nbsp;&nbsp;저녁(일 - 금) 18:00 - 21:00, 저녁(토) 17:30 - 21:00</li>
										<li class="depp4">&nbsp;&nbsp;&nbsp;&nbsp;*매주 일요일 점심은 운영되지 않습니다.</li>
										<li><img src="${path}/resources/img/circle-24px-iconmons.png" alt="" />&nbsp;문의 : 더 캐럿 000-000-0000</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="cont1" id="cont-Event">
						<div class="cont-title">
							<span><i>웨딩 | Wedding 패키지</i></span>
						</div>
						<div class="cont-slogan">프라이빗한 공간에서 소규모 부띠끄 웨딩!</div>
						<div class="cont-content">
							<div class="cont-img">
								<img src="${path}/resources/img/Wedding_pix.jpg" alt="" />
							</div>
							<div class="cont-cont">
								<div class="cont-simple">
									<ul class="simple">
										<li><img src="${path}/resources/img/time-32px-iconmons.png" alt="" />&nbsp;기간 : -</li>
										<li><img src="${path}/resources/img/dallar-32px-iconmons.png" alt="" />&nbsp;가격 : 700만원(15명)부터</li>
										<li><img src="${path}/resources/img/tele-32px-iconmons.png" alt="" />&nbsp;문의 : 더 캐럿 000-000-0000</li>
									</ul>
								</div>
								<div class="cont-deep" id="cont-deep3">
									<ul class="deep">
										<li id="deep1">오션뷰 절경의 이국적인 장소에서 로맨틱 웨딩마치!</li>
										<li id="deep5">Wedding List</li>
										<li><img src="${path}/resources/img/circle-24px-iconmons.png" alt="" />&nbsp;양식 또는 퓨전 한식 코스 메뉴 중 택일</li>
										<li><img src="${path}/resources/img/circle-24px-iconmons.png" alt="" />&nbsp;플라워 데코레이션</li>
										<li><img src="${path}/resources/img/circle-24px-iconmons.png" alt="" />&nbsp;식순 BGM, 케이크 & 혼구 용품</li>
										<li><img src="${path}/resources/img/circle-24px-iconmons.png" alt="" />&nbsp;웨딩 채플 대관, 대기실 & 다과, 무료 발렛 서비스 (1대)</li>
										<li><img src="${path}/resources/img/circle-24px-iconmons.png" alt="" />&nbsp;영상 준비 시, 빔 & 스크린 무료 대여 (미팅룸 1번 상영 가능)</li>
									</ul>
									<br /><br />
									<ul id="deep6">
										<li><img src="${path}/resources/img/warning-24px-iconmons.png" alt="" />&nbsp;1인 추가 시, 12만원 추가되며, 금액은 10% 부가세가 포함되어 있습니다.</li>
										<li><img src="${path}/resources/img/warning-24px-iconmons.png" alt="" />&nbsp;30명 이상 연회는 별도 견적에 따릅니다.</li>
										<li><img src="${path}/resources/img/warning-24px-iconmons.png" alt="" />&nbsp;코로나로 인한 정부의 사회적 거리두기 지침에 따라 수용 가능한 인원은 변경 될 수 있습니다.</li>
										<li><img src="${path}/resources/img/warning-24px-iconmons.png" alt="" />&nbsp;상기 내용은 2021년 5월 1일 이후 계약 진행 시 적용됩니다.</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- top button -->
		<div class="topbts" id=""><a href="" class="topbts"><img src="..${path}/resources/img/TOP-64px-iconmons.png" alt="" /></a></div>
	</div>
	
	<!-- footer -->
		<%@ include file="/WEB-INF/views/include/footer.jsp" %>
	<!-- //footer -->
</div>
</body>
</html>