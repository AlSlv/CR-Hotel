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
			<h3>오시는길</h3>
			<ul class="road">
				<li class="home"><span>Home</span></li>
				<li><span>호텔소개</span></li>
				<li class="current"><span>오시는길</span></li>
			</ul>
		</div>
		<!-- 메뉴이동경로 표시 - end -->
		
		<!-- 메뉴판 -->
		<div class="contents">
			<div class="pclist">
				
					<table class="menu" >
					<!-- 지도  -->
<div id="map" style="width:700px;height:400px;"></div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=	778d37d9e8c0997f9ae5f6790db596ba"></script>

<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(33.25102701542921, 126.41879688404883),
			level: 3
		};
		var map = new kakao.maps.Map(container, options);
		 // 마커가 표시될 위치입니다 
        var markerPosition  = new kakao.maps.LatLng(33.25102701542921, 126.41879688404883); 

        // 마커를 생성합니다
        var marker = new kakao.maps.Marker({
            position: markerPosition
   });
        marker.setMap(map);
		
	</script>
	<div class="info">
                    <h4 class="fn-font">오시는 길 : 제주 서귀포시 중문관광로3번길 486</h4>
                    <h4 class="fn-font">주소 : 제주 서귀포시 중문관광로3번길 486</h4>
                    <h4 class="fn-font">연락처 : 070-1234-5678</h4>
                    
	
<!-- 지도  end -->

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