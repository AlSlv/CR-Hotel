//객실 미리보기 사진 자동 전환 함수
function changeImage() {
		roomImage.setAttribute("src", imageArray[imageIndex]);
		imageIndex++;
		if(imageIndex >= imageArray.length) {
			imageIndex = 0;
		}
	}

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
				minDate : new Date(),
				maxDate : new Date(eDay.replace(/-/g, "/"))
			});
		}
		sDate.datepicker({
			language : 'ko',
			autoClose : true,
			minDate : new Date(),
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