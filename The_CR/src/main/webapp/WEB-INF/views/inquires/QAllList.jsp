<%@page import="com.crhotel.kg3.inquery.service.CrhotelService"%>
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

<script type="text/javascript">
jQuery.noConflict();
</script>

<%
request.setCharacterEncoding("UTF-8");
%>

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
		
		<div class="whole-wr">
			<div class="whole-cont">
				<div class="table-cont-wr">
					<div class="count-wr">
						<div class="count-1">
							<div class="count-title">
								<div id="count-title">
									평균 답변 시간
								</div>
								<div id="count-title">
									답변율
								</div>
							</div>
							<div class="count-answer">
								<div>
									<span class="answer">${ AvgTime }</span>&nbsp;일
								</div>
								<div>
									<span class="answer">${ AnswerRate }</span>&nbsp;%
								</div>
							</div>
						</div>
						<div class="count-2">
							<div class="count-cont">
								<span id="total">TOTAL</span>
							</div>
							<div class="count-cont" id="count-cont2">
								<div>
									문의&nbsp;<span id="qcount">${ count }</span>
								</div>
								<div>
									답변&nbsp;<span id="qcount">${ countA }</span>
								</div>
							</div>
							<div class="count-cont">
								<div class="write">
									<div>
										<c:if test="${member.id ne null and member.id ne 'manager'}">
											<button id="write" onclick="location.href='GInsert.do'"><span id="write"><img src="${path}/resources/img/write-16px-iconmons.png" alt="" />&nbsp;글쓰기</span></button>
										</c:if>
									</div>
								</div>
								<div class="search">
									<form action="searchBoard.do" method="post">
										<select name="type">
							                <option value="" <c:out value="${search.cri.type == null?'selected':'' }"/>>--</option>
							                <option value="T" <c:out value="${search.cri.type eq 'T'?'selected':'' }"/>>제목</option>
							                <option value="C" <c:out value="${search.cri.type eq 'C'?'selected':'' }"/>>내용</option>
							                <option value="W" <c:out value="${search.cri.type eq 'W'?'selected':'' }"/>>작성자</option>
							                <option value="TC" <c:out value="${search.cri.type eq 'TC'?'selected':'' }"/>>제목 + 내용</option>
<%-- 							                <option value="TW" <c:out value="${search.cri.type eq 'TW'?'selected':'' }"/>>제목 + 작성자</option> --%>
<%-- 							                <option value="TCW" <c:out value="${search.cri.type eq 'TCW'?'selected':'' }"/>>제목 + 내용 + 작성자</option> --%>
		           						</select> 
										<input type="text" name="keyword" value="${search.cri.keyword}" />&nbsp;<input id="search" type="submit" value=" 검색 "/>
										<input type="hidden" name="pageNum" value="${search.cri.pageNum }">
									</form>
								</div>
							</div>
						</div>
					</div>
					<div class="table-wr">
						<table>
							<thead>
								<tr>
									<th id="counting">No.</th>
									<th id="Qtitle">제목</th>
									<th>작성자</th>
									<th>작성일</th>
									<th>조회수</th>
									<th>상태</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="contents" items="${ alist }">
									<tr>
										<td id="counting">${ contents.num }</td>
									    	<c:choose>
									        	<c:when test="${ contents.secret eq '예' and (member.id eq contents.id or member.id eq 'manager')}">
									            	<td id="Qtitle"><a href="InOneBoard.do?title=${ contents.title }&num=${ contents.num }" style="color:#b2b2b2;">
									            	<c:out value="해당 게시물은 비밀글입니다."/>
									            	<img src="${path}/resources/img/lock-16px-iconmons.png" alt="비밀글" /></a>
								        			</td>
									            </c:when>
									            <c:when test="${ contents.secret eq '예' and (member.id ne contents.id and member.id ne 'manager')}">
									            	<td id="Qtitle"><a href="#" style="color:#b2b2b2;" onclick="alert('\n 관계자 외 열람이 제한된 게시글입니다.')">
									            	<c:out value="해당 게시물은 비밀글입니다." />
									            	<img src="${path}/resources/img/lock-16px-iconmons.png" alt="비밀글" /></a>
									            </c:when>
									            <c:otherwise>
									            	<td id="Qtitle"><a href="InOneBoard.do?title=${ contents.title }&num=${ contents.num }">${ contents.title }</a></td>
									            </c:otherwise>
									       	</c:choose>
										<td>${ contents.id_sec }</td>
										<td><fmt:formatDate value="${ contents.qDate }" pattern="yyyy-MM-dd HH:mm:ss" /></td>
										<td>${ contents.click }</td>
										<td><span id="tdspan">${ contents.answer_check }</span></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<!-- 페이징 처리 -->
						<div class="pager-wr">
							<div class="pagerbtn">
								 <ul class="pager_ul">
									<c:if test="${pageMaker.prev}">
									    <li class="pager_li"><a href="getAllBoard.do${pageMaker.makeQuery(pageMaker.startPage - 1)}" class="pagerbtnp">&lt;&lt;</a></li>
									</c:if> 
									
								    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
									   	<li class="pager_li" id="pager_li2"><a href="getAllBoard.do${pageMaker.makeQuery(idx)}" class="pagerbtnp" id="pagerbtnp">${idx}</a></li>
								    </c:forEach>
									
								    <c:if test="${pageMaker.next}">
								    	<li class="pager_li"><a href="getAllBoard.do${pageMaker.makeQuery(pageMaker.endPage + 1)}" class="pagerbtnp">&gt;&gt;</a></li>
								    </c:if> 
								 </ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- top button -->
	<div class="topbts" id=""><a href="" class="topbts"><img src="${path}/resources/img/TOP-64px-iconmons.png" alt="" /></a></div>
<!-- 중앙 - end -->


<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<!-- //footer -->

</body>
</html>