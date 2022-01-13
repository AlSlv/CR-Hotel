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
<link href="${path}/resources/css/Inquery.css" rel="stylesheet"/> 
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://code.jquery.com/jquery-3.1.0.min.js"></script>
<script type="text/javascript" src="${path}/resources/js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="${path}/resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="${path}/resources/js/jquery-3.6.0.min.js"></script>
<script src="${path}/resources/js/Inquery.js"></script>

<script type="text/javascript">
jQuery.noConflict();
</script>

</head>
<body>

<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!-- //header -->

<!-- 중앙 -->
<div id="middle">	

	<!-- leftMenu -->
	<div class="leftMenu">
		<h2>고객문의</h2><hr>
		<div class="lm">
			<ul class="list">
				<li><a href="contact.do"><span>연락처</span></a></li>
				<li><a href="question.do"><span>문의하기</span></a></li>			
			</ul>
		</div>
	</div>	
	<!-- leftMenu end -->
	
	<!-- mainList-->
	<div class="menuMenu">
		<!-- 메뉴이동경로 표시 -->
		<div class="menuintro">
			<h3>문의하기</h3>
			<ul class="road">
				<li class="home"><span>Home</span></li>
				<li><span>고객문의</span></li>
				<li class="current"><span>문의하기</span></li>
			</ul>
		</div>
		<!-- 메뉴이동경로 표시 - end -->
			<form action="managerInsert.do" method="post">
				<div class="table-insert-wr">
				<h1 id="titleTable">&lt;&lt; 답변글작성 &gt;&gt;</h1>
					<table>	
					<%
						request.setCharacterEncoding("UTF-8");
						String num = request.getParameter("qnum");
						String qnum = request.getParameter("qnum");
						String qtitle = request.getParameter("qtitle");
					%>
						<tr id="Mt_tr">
							<th>문의 제목</th>
							<td><%=qtitle%></td>
						</tr>	
						<tr>
							<th>작성자</th>
							<td id="admin">&nbsp; <img src="${path}/resources/img/adminr-16px-iconmons.png" alt="" />&nbsp; 관리자</td>
						</tr>
						<tr>
							<th>내용</th>
							<td><textarea id="summernote" name="content" data-byte="2000" onkeyup="checkByte(this);" required></textarea><br /><p id="counttd"><span id="count">0</span>/<span id="max-count">2000</span><span>byte</span></p></td>
						</tr>
					</table>
				</div>
				<center>
					<input type="hidden" name="num" value="<%=num%>">
					<input type="hidden" name="qnum" value="<%=qnum%>"> 
					<input type="hidden" name="id" value="${ member.id }"> 
					<input type="submit" value="작성완료" class="btn"/> <input type="reset" value="초기화" class="btn"/><br />
					<button onclick='location.href="question.do"' class="btn"><p>목록</p></button>
				</center>
			</form>
		</div>	
	</div>


<!-- 중앙 - end -->


<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<!-- //footer -->

</body>
</html>