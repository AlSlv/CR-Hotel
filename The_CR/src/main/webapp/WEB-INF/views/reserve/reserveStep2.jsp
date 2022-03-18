<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Step2</title>
<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<!-- <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script> -->
<script src="${path}/resources/js/reserve.js" charset="UTF-8"></script>
<link href="${path}/resources/css/reserve.css" rel="stylesheet"/>

</head>
<body>
<script>

function requestPay(){
	//예약번호 생성 작업 : CR+년월일시분초+문자
	var today = new Date();
	var year = today.getFullYear().toString().substr(-2);
	var month = ('0'+(today.getMonth()+1)).slice(-2);
	var day = ('0'+today.getDate()).slice(-2);
	var date = year+month+day;
	
	var hours = ('0'+today.getHours()).slice(-2);
	var minutes = ('0'+today.getMinutes()).slice(-2);
	var seconds = ('0'+today.getSeconds()).slice(-2);
	var time = hours+minutes+seconds;
	
	//A~Z까지 랜덤 문자 
	var ranStr = String.fromCharCode((Math.random()*26)+65);
	
    var IMP = window.IMP; // 생략가능
    IMP.init('imp52724474'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
	var msg;
  //결제 시스템을 실행시키는 함수
    IMP.request_pay({
    	/* 	INIpayTest */
    	pg : 'html5_inicis', //kakaopay
        pay_method : 'card',
        merchant_uid : 'merchant_' + new Date().getTime(), //주문번호
        name : 'CR 호텔_${param.rmname}',
        amount : ${param.price},
        buyer_email : 'allsilver94@naver.com',
        buyer_name : 'name',
        buyer_tel : 'tel'
      //  m_redirect_url : 'http://localhost:8081/The_Diner/reserveSuccess.jsp'
    }, function(rsp) {
        if ( rsp.success ) {
            //[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
            msg = '결제가 완료되었습니다.';
                    msg += '\n고유ID : ' + rsp.imp_uid;
                    msg += '\n상점 거래ID : ' + rsp.merchant_uid;
                    msg += '\결제 금액 : ' + rsp.paid_amount;
                    msg += '카드 승인번호 : ' + rsp.apply_num;
                    alert(msg);
            jQuery.ajax({
            	url: 'insertRs.do', //open(method,url,async)
            	// url: "/payments/complete", //cross-domain error가 발생하지 않도록 주의해주세요
                type: 'POST', //open method
                dataType: 'json', 
                data: { //내가 보내는 값
                    imp_uid : rsp.imp_uid,
                    merchant_uid: rsp.merchant_uid,
                    res_no : 'CR'+date+time+ranStr,
                    rnum : ${param.rnum},
                    rname : '${param.rname}',
                    rtel : '${param.rtel}',
                    ckin : '${param.ckin}',
                    ckout : '${param.ckout}',
                    rmname : '${param.rmname}',
                    people : ${param.people},
                    price : ${param.price},
                    id : '${param.id}',
                    require : '${param.require}'
                    //기타 필요한 데이터가 있으면 추가 전달
                }
            }).done(function(data) {
                //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
                if ( everythings_fine ) {
                    msg = '결제가 완료되었습니다.';
                    msg += '\n고유ID : ' + rsp.imp_uid;
                    msg += '\n상점 거래ID : ' + rsp.merchant_uid;
                    msg += '\결제 금액 : ' + rsp.paid_amount;
                    msg += '카드 승인번호 : ' + rsp.apply_num;
                    
                    alert(msg);
                } else {
                    //[3] 아직 제대로 결제가 되지 않았습니다.
                    //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
                }
            });
            //성공시 이동할 페이지
            location.href='payend.do';
        } else {
            msg = '결제에 실패하였습니다.';
            msg += '에러내용 : ' + rsp.error_msg;
            //실패시 이동할 페이지
            location.href="res.do"
            alert(msg);
        }
    });

}

</script>
<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!-- //header -->
<div class="contain">
	<div class="contents">
	
	<h2>예약하기</h2>
	<form action="payGo.do" method="post" id="frm" onsubmit="requestPay();">
		<table class="tb" border=1>
			<tr style="background-color:#eee;">	
				<th>예약 날짜</th>
				<td>${ckin } ~ ${ckout}<br></td>
					<input type="hidden"  value="${ckin}" name="ckin">
					<input type="hidden" value="${ckout}" name="ckout">
					<input type="hidden" value="${rnum}" name="rnum">
					<input type="hidden"  value="${rmname}" name="rmname">
			</tr>
			<!-- id 임시만  -->
			<tr>
				<th>ID</th>
			 	<input type="hidden" value="${member.id}" name="id">
				<td>${member.id }</td>
			</tr>
			<tr>	
				<th>예약자 이름</th>
				<td><input type = "text" name="rname" required></td>
			</tr>
			<tr>	
				<th>예약자 전화번호</th>
				<td><input name="rtel" type = "tel" class="phoneNumber" placeholder="예)010-1234-1234" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{3,4}" maxlength="13" required></td>
			</tr>
			
			<tr>
                <th>인원수
                <span style="display:block;font-size:13px;font-weight:200;">(최대 3명/인원 추가 시 전화문의 요망)</span></th>
                <td><input type="number" min="0" max="3" name="people" id="people" required> 명</td>
            </tr>
			<tr>
				<th>객실타입-객실명</th>
				<td><c:if test="${rmname eq 'Standard'}">스탠다드룸</c:if>
					<c:if test="${rmname eq 'Deluxe' }">디럭스룸</c:if>
					<c:if test="${rmname eq 'Suite' }">스위트룸</c:if> 
					<c:if test="${rmname eq 'Oceanviewsuite' }">오션뷰 스위트룸</c:if>
					<c:if test="${rmname eq 'Executive' }">이그제큐티브룸</c:if>
					- ${rnum } 호</td>
			</tr>
			<tr>
				<th>가격</th>
			<fmt:parseDate var="startDate_D"  value="${ckin}" pattern="yyyy-MM-dd"/>
            <fmt:parseDate var="endDate_D" value="${ckout}"  pattern="yyyy-MM-dd"/>
            <fmt:parseNumber var="startDate_N" value="${startDate_D.time / (1000*60*60*24)}" integerOnly="true" />
            <fmt:parseNumber var="endDate_N" value="${endDate_D.time / (1000*60*60*24)}" integerOnly="true" />
				<td>
				<c:if test="${ckin == ckout }">${price } 원 / 당일 예약</td>
				<input type="hidden" value="${price }" name="price"/>
				</c:if>
				<c:if test="${ckin != ckout }">
				${price*(endDate_N-startDate_N) } 원 / ${endDate_N-startDate_N } 박 ${(endDate_N-startDate_N)+1 } 일</td>
				<input type="hidden" value="${price*(endDate_N-startDate_N)}" name="price">
				</c:if>
			</tr>
			<tr>	
				<th>요청사항</th>
				<td><textarea id="txtArea" name="require" cols="50" rows="10" onFocus="this.select()">50자 이내로 작성해주세요.</textarea>
					<div id="cnt">(0 / 50)</div>
				</td>
			</tr>
			
		</table>
		<div class="guideinfo">
			<div class="g_h3"><h3>유의사항</h3></div>
			<div class="formWrap">
				<ul class="notice">
					<li style="width:550px;margin-right:15px;margin-bottom:30px;">
						<ul class="ul">
							<li class="first">호텔 이용안내</li>
							<li>요금에는 부가가치세 10% 및 봉사료 10%(합계 21%)가 부과됩니다.</li>
							<li>기준 인원을 초과하여 투숙 시 추가 인원에 대해 별도의 요금이 부과됩니다.
	추가 인원에 대한 기본 요금(세금 및 봉사료 별도)은 성인 5만원, 어린이 3만원이며, 객실 타입 및 패키지 혜택에 따라 상이합니다.
	(성인 기준 : 만 13세 이상, 어린이 기준 : 37개월 이상 ~ 만 12세 이하)</li>
							<li>37개월 미만의 유아 동반 시 추가 인원 요금 및 조식은 무료이며, 유아(37개월 미만) 동반 여부는 체크인 시 프런트 데스크 직원에게 알려 주셔야 무료로 이용 가능합니다.</li>
							<li>체크인은 오후 3시부터이며 체크아웃은 정오 12시까지입니다.
	오후 3시 이전 Early Check-In 또는 12시 이후 Late Check-Out 하실 경우 추가 요금이 부과될 수 있습니다.</li>
							<li>2021년 10월 1일부터 체크인은 오후 2시 이후, 체크아웃은 오후 12시까지로 변경됩니다.</li>
							<li>체크인 시 등록카드 작성 및 투숙객 본인 확인을 위해 본인 사진이 포함된 신분증을 반드시 제시해 주시기 바랍니다.</li>
							<li>본 홈페이지 요금은 할인 적용된 요금이며, 카드사 할인 등의 중복 할인 혜택이 적용되지 않습니다.</li>
							<li>어린이 동반 고객을 위한 영유아 용품(아기 욕조, 아기 침대, 어린이 베개 및 아동용 배스 로브와 슬리퍼)은 객실예약과를 통해 사전 요청 가능하며, 이용 상황에 따라 조기 마감될 수 있습니다.
	(단, 유모차는 현장에서만 대여 가능합니다.)</li>
							<li>대출 요청이 완료된 영유아 용품, 엑스트라 베드는 체크인 당일 18시까지 객실에 준비해 드립니다.</li>
							<li>자세한 객실안내는 카운터로 문의 바랍니다.</li>
						</ul>
					</li>
					<li style="width:550px;margin-left:15px;">
						<ul class="ul">	
							<li class="first">부대시설 이용안내</li>
							<li>체련장(Gym), 실내 수영장, 실내 사우나(유료 시설)는 매월 3번째 수요일 정기 휴무입니다.</li>
							<li>체련장은 만 16세 이상, 실내 사우나는 만 13세 이상부터 이용 가능합니다.</li>
							<li>실내 수영장은 성인 고객 전용 시설로, 만 13세 미만 고객은 주말 및 공휴일에 한해 성인 보호자의 보호 하에 이용 가능합니다.</li>
							<li>야외 수영장인 어번 아일랜드는 유료 시설로서 입장 혜택이 포함된 상품 외에는 이용 시 입장료가 추가로 부과되며 사전 예약은 불가합니다. 쾌적하고 안전한 운영을 위해 적정 인원 초과 시 입장이 제한될 수 있습니다.</li>
							<li>실내 및 야외 수영장에서 다이빙은 금지되어 있습니다.</li>
							<li>호텔 부대시설은 감염병 예방법, 재난 안전법 등 관련 법령 및 방역당국 등의 규제, 조치 사항 등에 따라 사전 고지 없이 이용이 제한되거나 변경될 수 있습니다.</li>
						</ul>
					</li>
				</ul>
			</div>
			<div class="clear"></div>
			<div class="g_h3" style="border-top:1px solid #dcdcdc;"><h3>취소 및 환불 규정</h3></div>
			<div class="formWrap">
				<ul class="ul">
					<li class="first">[취소/변경 및 노쇼(No-show) 안내]</li>
					<li>숙박 예정일 1일 전 18시까지는 위약금 없이 취소 및 변경이 가능합니다.</li>
					<li>숙박 예정일 1일 전 18시 이후 취소/변경 및 노쇼(No-show) 발생 시,
- 성수기(5월~10월, 12월 24일~31일) : 최초 1일 숙박 요금의 80%가 위약금으로 부과됩니다.
- 비수기(성수기 외 기간) : 최초 1일 숙박 요금의 10%가 위약금으로 부과됩니다.</li>
				</ul>
			</div>
		</div>
		<div class="allcheck">
			<input type="checkbox" id="ck1" name="ck1"><span>유의사항, 취소 및 환불 규정을 모두 확인해주세요.</span>
			<div class="move">
				<div class="pre"><a href="res.do">이전 페이지로 가기</a></div>
				<div class="button">
					<input type="submit" value="예약하기" class="submit">
				</div>
			</div>
		</div>
	</form>
	</div>
	<!-- //contents -->
</div>
<!-- //wrap-->
<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<!-- //footer -->
</body>
</html>