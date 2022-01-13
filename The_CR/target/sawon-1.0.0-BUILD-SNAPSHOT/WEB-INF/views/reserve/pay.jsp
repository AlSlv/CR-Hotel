<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script>

function requestPay(){
    var IMP = window.IMP; // 생략가능
    IMP.init('imp52724474'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
	var msg;
  //결제 시스템을 실행시키는 함수
    IMP.request_pay({
    	/* 	INIpayTest */
    	pg : 'html5_inicis', //kakaopay
        pay_method : 'card',
        merchant_uid : 'merchant_' + new Date().getTime(), //주문번호
        name : 'CR 호텔',
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
            	url: "insertRs.do", //open(method,url,async)
            	// url: "/payments/complete", //cross-domain error가 발생하지 않도록 주의해주세요
                type: 'POST', //open method
                dataType: 'json', 
                data: { //내가 보내는 값
                    imp_uid : rsp.imp_uid,
                    merchant_uid: rsp.merchant_uid,
                    rnum : ${param.rnum},
                    rname : "${param.rname}",
                    rtel : "${param.rtel}",
                    ckin : "${param.ckin}",
                    ckout : "${param.ckout}",
                    rmname : "${param.rmname}",
                    people : ${param.people},
                    price : ${param.price},
                    payYN : "Y",
                    id : "${param.id}"
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
            location.href='payend.jsp';
        } else {
            msg = '결제에 실패하였습니다.';
            msg += '에러내용 : ' + rsp.error_msg;
            //실패시 이동할 페이지
            location.href="reserve/reserveStep2.jsp";
            alert(msg);
        }
    });

}

</script>
<body onload="requestPay();">
</body>
</html>