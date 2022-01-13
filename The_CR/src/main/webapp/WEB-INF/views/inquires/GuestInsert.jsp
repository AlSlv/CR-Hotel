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
		<div>
			<form action="guestInsert.do" method="post">
				<div class="table-insert-wr">
					<h1 id="titleTable">&lt;&lt; 문의글작성 &gt;&gt;</h1>
					<table>		
						<tr>
							<th>문의종류</th>
							<td>
								<select id="Qtype" name="question_type" required>
							    	<option value="" <c:out value="${pageMaker.cri.type == null?'selected':'' }"/>>--</option>
							    	<option value="T" <c:out value="${pageMaker.cri.type eq 'T'?'selected':'' }"/>>예약문의</option>
							   		<option value="C" <c:out value="${pageMaker.cri.type eq 'C'?'selected':'' }"/>>패키지문의</option>
							    	<option value="W" <c:out value="${pageMaker.cri.type eq 'W'?'selected':'' }"/>>어메니티문의</option>
							    	<option value="TCW" <c:out value="${pageMaker.cri.type eq 'TCW'?'selected':'' }"/>>기타</option>
		           				</select> 
		           			</td>
						</tr>
						<tr>
							<th>비밀글</th>
							<td>예&nbsp;<input type="radio" name="secret" value="예">&nbsp;&nbsp;아니오&nbsp;<input type="radio" name="secret" value="아니오" checked="checked"></td>
						</tr>
						<tr>
							<th>제목</th>
							<td><input type="text" id="title" name="title" required/></td>
						</tr>
						<tr>
							<th>작성자</th>
							<td>&nbsp; ${ member.id } </td>
						</tr>
						<tr>
							<th>내용</th>
							<td><textarea id="summernote" name="content" data-byte="2000" onkeyup="checkByte(this);" required></textarea><br /><p id="counttd"><span id="count">0</span>/<span id="max-count">2000</span><span>byte</span><br /></p></td>
						</tr>
					</table>
				</div>
				<center>
					<input type="submit" value="작성완료" class="btn"/> <input type="reset" value="초기화" class="btn"/><br />
					<button onclick='location.href="question.do"' class="btn"><p>목록</p></button>
				</center>
				<input type="hidden" name="num" value="${ num }"> 
				<input type="hidden" name="id" value="${ member.id }"> 
				<input type="hidden" name="id_sec" value="*">
					<script>
						$(document).ready(function() {
							var id_sec = $('input[name=id]').val();
							id_sec = id_sec.substr(0, 4) + "****";

							$('input[name=id_sec]').val(id_sec);
						});
					</script>
				</form>
		</div>
	</div>
</div>

<!-- 중앙 - end -->


<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<!-- //footer -->

</body>
</html>