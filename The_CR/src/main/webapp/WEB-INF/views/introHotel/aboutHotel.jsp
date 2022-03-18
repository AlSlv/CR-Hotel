<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<link href="${path}/resources/css/style2.css" rel="stylesheet"/> 
 <style>
    *{margin:0;padding:0;}
    ul,li{list-style:none;}
    .slide{height:300px;overflow:hidden;}
    .slide ul{position:relative;height:100%;}
    .slide li{position:absolute;left:0;right:0;top:0;bottom:0;opacity:0;animation:fade 8s infinite;}
    .slide li:nth-child(1){animation-delay:0s}
    .slide li:nth-child(2){animation-delay:2s}
    .slide li:nth-child(3){animation-delay:4s}
    .slide li:nth-child(4){animation-delay:6s}
     /* 100 / 8 = 12.5 */
    @keyframes fade {
      0% {opacity:0;}
      5% {opacity:1;}
      25% {opacity:1;}
      30% {opacity:0;}
      100% {opacity:0;}
    }
  </style>
</head>
<body>
<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!-- //header -->
<!-- 중앙 -->
<div id="middle">	

	<!-- leftMenu -->
	<div class="leftMenu">
		<h2>호텔당근 소개<span>호텔소개</span></h2>
		<div class="lm">
			<ul class="list">
				<li><a href="about.do"><span>개요</span></a></li>
				<li><a href="inform.do"><span>호텔소개</span></a></li>			
				<li><a href="award.do"><span>수상이력</span></a></li>
				<li><a href="map.do"><span>오시는 길</span></a></li>
			</ul>
		</div>
	</div>	
	<!-- leftMenu end -->
	
	<!-- mainList-->
	<div class="menuMenu">
		<!-- 메뉴이동경로 표시 -->
		<div class="menuintro">
			<h3>개요</h3>
			<ul class="road">
				<li class="home"><span>Home</span></li>
				<li><span>호텔소개</span></li>
				<li class="current"><span>개요</span></li>
			</ul>
		</div>
		<!-- 메뉴이동경로 표시 - end -->
		
		<!-- 메뉴판 -->
		<div class="contents">
			<div class="pclist">
				
					<table class="menu" >
<tr>
<td class="slide">
	<ul>
		<li><img src = "${path}/resources/img/hotel.jpg" width = 1000px height = 400px; ></li>
		<li><img src = "${path}/resources/img/hotel2.jpg" width = 1000px height = 400px; ></li>
		<li><img src = "${path}/resources/img/hotel3.jpg" width = 1000px height = 400px; ></li>
		<li><img src = "${path}/resources/img/hotel4.jpg" width = 1000px height = 400px; ></li>
	</ul>
</td>
</tr>
<tr>
<td>
<ul class="title">
	<h1><li class="stitle"> The Best Hospitality Company </li></h1><hr>
	<li>호텔 당근은 '최고의 호스피탈리티 기업'을 목표로 오랜 세월동안 품위와 전통을 유지하며 고객들의 마음을 사로잡아 
왔습니다.
LHW 가입을 통해<br> 세계 최고의 럭셔리 호텔들과 어깨를 나란히 하는가 하면 전통이란 지붕 위에 모더니즘적 디자인 요소를
가미, 삶의 품격을 한층 높여 주는 프리미<br>엄 라이프 스타일 공간으로 변화를 거듭해 왔습니다. </li>
</ul>
</td>
</tr>
<tr>

<td>
<ul class="title">
	<h1><li class="stitle">Vision </li></h1><hr>
	<li>Premium Lifestyle Leading Company</li>
	<li>최고의 품격과 신뢰를 바탕으로 고객이 꿈꾸는 라이프 스타일을 제공하는 글로벌 기업</li>
</ul>
</td>
</tr>

<tr>

<td>
<ul class="title">
	<h1><li class="stitle">Mission</li></h1><hr>
	<li>우리는 최고의 라이프스타일 전문가로서 더 많은 인류에게 품격과 자부심을 경험케 한다.</li>
</ul>
</td>
</tr>

<tr>
<td><img src = "./resources/img/pic5.png" width = 1000px height = 250px; ></td>

</tr>
</table>
				</div>
			</div>
		</div>
		<!-- 메뉴판 - end -->
	</div>
	<!-- mainList - end-->
</div>
<!-- 중앙 - end -->

<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<!-- //footer -->
</body>
</html>