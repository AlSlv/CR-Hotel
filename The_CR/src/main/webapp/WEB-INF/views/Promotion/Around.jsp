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
								<li><a href="promotion.do"><span class="sideMenu-text">프로모션&패키지</span></a></li>
								<li id="on2"><a href="around.do"><span class="sideMenu-text" id="onn">주변 즐길거리&볼거리</span></a></li>
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
					<p>주변 즐길거리&볼거리</p>
				</div>
			</div>
		</div>
		<!-- Content -->
		<div class="content-wr">
			<div class="content-container-ar" id="around">
				<div class="cont-wr-ar">
					<div class="cont-wr-cont">
						<div class="cont-img-ar">
							<a href="http://www.jeju.go.kr/hallasan"><img src="${path}/resources/img/hanlla_pix.jpg" alt="" /></a>
						</div>
						<div class="cont-cont-ar">
							<ul class="cont-ar">
								<li id="ar-tit1">한라산</li>
								<li id="ar-cont1">"아름다운 자연경관"</li>
								<li id="ar-addr1"><img src="${path}/resources/img/address-20px-iconmons.png" alt="" />&nbsp;주소 :</li>
								<li id="ar-addr1_1">제주 서귀포시 토평동 산15-1</li>
							</ul>
						</div>
					</div>
					<div class="cont-wr-cont">
						<div class="cont-img-ar">
							<a href="https://www.visitjeju.net/kr/detail/view?contentsid=CONT_000000000500349t"><img src="${path}/resources/img/sungsan_pix.jpg" alt="" /></a>
						</div>
						<div class="cont-cont-ar">
							<ul class="cont-ar">
								<li id="ar-tit2">성산일출봉</li>
								<li id="ar-cont2">"눈부신 아침해 풍경"</li>
								<li id="ar-addr2"><img src="${path}/resources/img/address-20px-iconmons.png" alt="" />&nbsp;주소 :</li>
								<li id="ar-addr2_1">제주 서귀포시 성산읍 성산리1</li>
							</ul>
						</div>
					</div>
					<div class="cont-wr-cont">
						<div class="cont-img-ar">
							<a href="https://www.visitjeju.net/kr/detail/view?contentsid=CONT_000000000500618"><img src="${path}/resources/img/cheonjiyeon_pix.jpg" alt="" /></a>
						</div>
						<div class="cont-cont-ar">
							<ul class="cont-ar">
								<li id="ar-tit3">천지연 폭포</li>
								<li id="ar-cont3">"보기만해도 시원한 폭포수"</li>
								<li id="ar-addr3"><img src="${path}/resources/img/address-20px-iconmons.png" alt="" />&nbsp;주소 :</li>
								<li id="ar-addr3_1">제주 서귀포시 천지동 667-7</li>
							</ul>
						</div>
					</div>
					<div class="cont-wr-cont">
						<div class="cont-img-ar">
							<a href="#"><img src="${path}/resources/img/all_in_pix.jpg" alt="" /></a>
						</div>
						<div class="cont-cont-ar">
							<ul class="cont-ar">
								<li id="ar-tit4">섭지코지[올인]</li>
								<li id="ar-cont4">"추억의 드라마 촬영장소"</li>
								<li id="ar-addr4"><img src="${path}/resources/img/address-20px-iconmons.png" alt="" />&nbsp;주소 :</li>
								<li id="ar-addr4_1">제주 서귀포시 대정읍 상모리 산5</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="cont-wr-ar">
					<div class="cont-wr-cont">
						<div class="cont-img-ar">
							<a href="http://www.jejuhorsepark.co.kr"><img src="${path}/resources/img/horse2_pix.jpg" alt="" /></a>
						</div>
						<div class="cont-cont-ar">
							<ul class="cont-ar">
								<li id="ar-tit1">조랑말체험공원</li>
								<li id="ar-cont1">"제주도 조랑말과 특별한 경험"</li>
								<li id="ar-addr1"><img src="${path}/resources/img/address-20px-iconmons.png" alt="" />&nbsp;주소 :</li>
								<li id="ar-addr1_1">제주 서귀포시 표선면 녹산로 318-17</li>
							</ul>
						</div>
					</div>
					<div class="cont-wr-cont">
						<div class="cont-img-ar">
							<a href="http://www.instagram.com/gb.jeju"><img src="${path}/resources/img/yacht_pix.jpg" alt="" /></a>
						</div>
						<div class="cont-cont-ar">
							<ul class="cont-ar">
								<li id="ar-tit2">요트</li>
								<li id="ar-cont2">"바다 위에서 즐기는 낭만"</li>
								<li id="ar-addr2"><img src="${path}/resources/img/address-20px-iconmons.png" alt="" />&nbsp;주소 :</li>
								<li id="ar-addr2_1">제주 서귀포시 대포로 172-7</li>
							</ul>
						</div>
					</div>
					<div class="cont-wr-cont">
						<div class="cont-img-ar">
							<a href="#"><img src="${path}/resources/img/casino_pix.jpg" alt="" /></a>
						</div>
						<div class="cont-cont-ar">
							<ul class="cont-ar">
								<li id="ar-tit3">카지노</li>
								<li id="ar-cont3">"관광지에서의 한판 승부"</li>
								<li id="ar-addr3"><img src="${path}/resources/img/address-20px-iconmons.png" alt="" />&nbsp;주소 :</li>
								<li id="ar-addr3_1">제주 제주시 노연로 12 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;제주 드림타워</li>
							</ul>
						</div>
					</div>
					<div class="cont-wr-cont">
						<div class="cont-img-ar">
							<a href="http://www.songakkart.co.kr"><img src="${path}/resources/img/cart_pix.jpg" alt="" /></a>
						</div>
						<div class="cont-cont-ar">
							<ul class="cont-ar">
								<li id="ar-tit4">카트체험</li>
								<li id="ar-cont4">"빠른 속도로 질주본능"</li>
								<li id="ar-addr4"><img src="${path}/resources/img/address-20px-iconmons.png" alt="" />&nbsp;주소 :</li>
								<li id="ar-addr4_1">제주 서귀포시 대정읍 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;송악관광로 404</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- top button -->
		<div class="topbts" id=""><a href="" class="topbts"><img src="${path}/resources/img/TOP-64px-iconmons.png" alt="" /></a></div>
		
		<!-- footer -->
		<%@ include file="/WEB-INF/views/include/footer.jsp" %>
		<!-- //footer -->
	
	</div>

</body>
</html>