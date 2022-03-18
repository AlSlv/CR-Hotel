//예약 취소 시 확인창 
function resCancle(res_no){
   var answer = confirm("예약을 취소하시겠습니까? 취소 시 환불은 2~3일정도 소요됩니다");
   if(answer) {
	  var url = "resCancle.do?res_no="+res_no.value;
	  window.open(url,"_self",'');
   }
}