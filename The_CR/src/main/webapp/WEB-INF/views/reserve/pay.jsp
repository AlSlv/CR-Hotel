<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        buyer_email : '${member.mail}',
        buyer_name : '${param.rname}',
        buyer_tel : '${param.rtel}'
    }, function(rsp) {
        if ( rsp.success ) {
            //[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
            msg = '결제가 완료되었습니다.';
                  /*   msg += '\n고유ID : ' + rsp.imp_uid;
                    msg += '\n상점 거래ID : ' + rsp.merchant_uid;
                    msg += '\결제 금액 : ' + rsp.paid_amount;
                    msg += '카드 승인번호 : ' + rsp.apply_num; */
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
            var url = window.sessionStorage.getItem('back');
            //실패시 이동할 페이지
            location.href=url; 
            alert(msg);
        }
    });

}

</script>
<body onload='requestPay();'>
</body>
</html>