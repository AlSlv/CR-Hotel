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
			<h3>호텔소개</h3>
			<ul class="road">
				<li class="home"><span>Home</span></li>
				<li><span>호텔소개</span></li>
				<li class="current"><span>호텔소개</span></li>
			</ul>
		</div>
		<!-- 메뉴이동경로 표시 - end -->
		
		<!-- 메뉴판 -->
		<div class="contents">
			<div class="pclist">
				
					<table class="menu" >
<tr>
 <div>
<td><img src = "${path}/resources/img/beach1.jpg" width = 1000px height = 400px; ></td>
</div>
</tr>

<tr>
<td><img src = "${path}/resources/img/hotelinform1.png" width = 1000px height = 500px; ></td>

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