<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pay end</title>

<link rel="stylesheet" href="${path}/resources/css/reserve.css" />
<script src="${path}/resources/js/reserve.js" charset="UTF-8"></script>
<script src="${path}/resources/js/jquery-3.1.1.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="${path}/resources/js/datepicker.js"></script>
<script src="${path}/resources/js/datepicker.ko.js"></script>
</head>
<body>
<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!-- //header -->
<div class = "payend">
<div class ="paye">
<h1>결제가 완료 되었습니다.</h1><br>
<table border=0 class= "payendtable">
<tr><td><a href="reservationck.do">내 예약 조회</a></td>
 <td><a href="index.do">홈으로</a></td></tr>
</table>  
</div>
</div> 
<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<!-- //footer -->
</body>
</html>