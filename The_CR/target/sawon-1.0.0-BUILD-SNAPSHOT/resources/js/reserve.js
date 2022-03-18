//Step1 달력
function datePickerSet(sDate, eDate, flag) {

	// 시작 ~ 종료 2개 짜리 달력 datepicker
	if (!isValidStr(sDate) && !isValidStr(eDate) && sDate.length > 0
			&& eDate.length > 0) {
		var sDay = sDate.val();
		var eDay = eDate.val();

		if (flag && !isValidStr(sDay) && !isValidStr(eDay)) { // 처음 입력 날짜 설정,
			// update...
			var sdp = sDate.datepicker().data("datepicker");
			sdp.selectDate(new Date(sDay.replace(/-/g, "/"))); // 익스에서는 그냥 new
			// Date하면 -을
			// 인식못함
			// replace필요

			var edp = eDate.datepicker().data("datepicker");
			edp.selectDate(new Date(eDay.replace(/-/g, "/"))); // 익스에서는 그냥 new
			// Date하면 -을
			// 인식못함
			// replace필요
		}

		// 시작일자 세팅하기 날짜가 없는경우엔 제한을 걸지 않음
		if (!isValidStr(eDay)) {
			sDate.datepicker({
				maxDate : new Date(eDay.replace(/-/g, "/"))
			});
		}
		sDate.datepicker({
			language : 'ko',
			autoClose : true,
			onSelect : function() {
				datePickerSet(sDate, eDate);
			}
		});

		// 종료일자 세팅하기 날짜가 없는경우엔 제한을 걸지 않음
		if (!isValidStr(sDay)) {
			eDate.datepicker({
				minDate : new Date(sDay.replace(/-/g, "/"))
			});
		}
		eDate.datepicker({
			language : 'ko',
			autoClose : true,
			onSelect : function() {
				datePickerSet(sDate, eDate);
			}
		});
	}
	
	function isValidStr(str) {
		if (str == null || str == undefined || str == "")
			return true;
		else
			return false;
	}
}



//Step2 
//요청사항 textarea 글자수
$(function(){
	$('#txtArea').on('keyup',function(){
		$('#cnt').html("("+$(this).val().length+" / 50)");
		
		if($(this).val().length>100){
			$(this).val($(this).val().substring(0,50));
			$('#cnt').html("(50 / 50)");
		}
	});
	
	if(!$("input:checked[Name='ck1']").is(":checked")){
		alert("취소 및 환불 약관에 동의해주세요.")
	}
});

//전화번호 입력시 자동 대시(하이픈, "-") 삽입
$(document).on("keyup", ".phoneNumber", function() { 
	$(this).val( $(this).val().replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--", "-") );
});

