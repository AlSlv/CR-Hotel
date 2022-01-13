<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의 | The C.R.</title>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/> 
<link href="${path}/resources/css/style2.css" rel="stylesheet"/>
<link href="${path}/resources/css/Inquery.css" rel="stylesheet"/>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="${path}/resources/js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="${path}/resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="${path}/resources/js/Inquery.js"></script>
<script type="text/javascript" src="${path}/resources/js/bootstrap.js"></script>

<%
request.setCharacterEncoding("UTF-8");
%>

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
			<h3 id="head3">문의하기</h3>
			<ul class="road">
				<li class="home"><span>Home</span></li>
				<li><span>고객문의</span></li>
				<li class="current"><span>문의하기</span></li>
			</ul>
		</div>
		<!-- 메뉴이동경로 표시 - end -->		
			<div class="table-wr-one">
				<div class="Gtable-wr">
					<form action="" method="post">
						<h2 id="titleTable">&lt;&lt; 문의글 &gt;&gt;</h2>
						<div class="Gtable-cont">
							<table class="Gtable">
								<tr>
									<th>글번호 </th>
									<td colspan='3'>${ voq.num }</td>
								</tr>
								<tr>
									<th>작성자</th>
									<td id="guest">${ voq.id_sec }</td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
									<th>작성일</th>
									<td><fmt:formatDate value="${ voq.qDate }" pattern="yyyy-MM-dd HH:mm:ss" /></td>
								</tr>
								<tr>
									<th>제목</th>
									<td colspan='3'>${ voq.title }</td>
								</tr>
								<tr>
									<th>내용</th>
									<td colspan='3'><textarea class="textarea_one" readonly>${ voq.content }</textarea></td>
								</tr>
							</table>
						</div>
						<div class="btn-wr">
							<span class="count-th">조회수  | ${ voq.click }</span>
							<c:if test="${member.id eq 'manager' and voa.aDate eq null}">
								<span class="write" id="OneWritebtn">
									<button type="button" id="write" onclick="location.href='MInsert.do?qnum=${ voq.num }&qtitle=${ voq.title }'"><span id="write"><img src="${path}/resources/img/write-16px-iconmons.png" alt="" />&nbsp;답변쓰기</span></button>
								</span> 
							</c:if>
							<button type="button" onclick='location.href="question.do"' class="btn"><p>목록</p></button> 
							<c:if test ="${ voq.id eq member.id }" >
								<input type="button" value="수정" class="btn" onclick="location.href='InGUpdate.do?title=${ voq.title }&num=${ voq.num }'">
								
								<input type="button" value="삭제" class="btn" onclick="reDelCheck(${ voq.num })"> 
							</c:if>
								<input type ="hidden" name ="num" value="${ voq.num }">
						</div>
					</form>
				</div>
				<div class="Mtable-wr">
					<form action="" method="post">
						<div class="Mtable-cont">
							<h2 id="titleTable">&lt;&lt; 답변글 &gt;&gt;</h2>
								<table class="Mtable">
									<tr>
										<th>작성자</th>
										<td id="admin">&nbsp; <img src="${path}/resources/img/adminr-16px-iconmons.png" alt="" />&nbsp; 관리자</td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
										<th>작성일</th>
										<td><fmt:formatDate value="${ voa.aDate }" pattern="yyyy-MM-dd HH:mm:ss" /></td>
									</tr>
									<tr>
										<th>내용</th>
										<td colspan='3'><textarea class="textarea_one" readonly>${ voa.content }</textarea></td>
									</tr>
								</table>
							</div>
							<div class="btn-wr">
								<span class="count-th">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span>
								<span class="write" id="OneWritebtn"></span>
								<button type="button" onclick='location.href="question.do"' class="btn"><p>목록</p></button>
								<c:if test = "${ member.id eq 'manager' and voa.aDate ne null}">
									<input type="button" value="수정" class="btn" onclick="location.href='InMUpdate.do?num=${ voa.qnum }'">
									
									<input type="button" value="삭제" class="btn" onclick="reDelCheckA(${ voq.num })">  
								</c:if>	
									<input type ="hidden" name ="num" value="${ voq.num }">
							</div>
						</form>
			</div>
		</div>
	</div>
	
	<!-- top button -->
	<div class="topbts" id=""><a href="" class="topbts"><img src="${path}/resources/img/TOP-64px-iconmons.png" alt="" /></a></div>
</div>
<!-- 중앙 - end -->


<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<!-- //footer -->

</body>
</html>