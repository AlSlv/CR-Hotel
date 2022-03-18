$(function() {
	$("tbody tr").hover(function() {
		$(this).find("td").addClass("hov");
	}, function() {
		$(this).find("td").removeClass("hov");
	});
	
	var rows = $("table").find("tbody tr").length;  
	var per_page = 10;
	var no_pages = Math.ceil(rows / per_page);    
	var pageNumbers = $("<div id='pages' style='text-align:center;margin:30px;position:relative;top:20px;'></div>");
	for(var i = 0; i <no_pages; i++) {
		$("<span class='page' style='cursor:pointer;margin-right:5px;'>"+(i+1) +"</span>").appendTo(pageNumbers);  
	}
	pageNumbers.insertAfter(".deletebtn"); 
	
	

	$(".page").hover(function() {  
		$(this).addClass("hov");
	}, function() {
		$(this).removeClass("hov");
	});  
	
	$("table").find("tbody tr").hide();    
	var t = $("table tbody tr");   
	for ( var j = 0; j <= per_page-1 ; j++) { 
		$(t[j]).show();
	}
	
	$("span").click(function(event) {
		$("table").find("tbody tr").hide();
		for ( var k = ($(this).text() -1 ) * per_page; k <= $(this).text() * per_page -1 ; k++) {
			$(t[k]).show();
		}
	});
	
	var chkObj = document.getElementsByName("RowCheck");
	var rowCnt = chkObj.length;
	
	$("input[name='allCheck']").click(function(){
		var chk_listArr = $("input[name='RowCheck']");
		for (var i=0;i<chk_listArr.length;i++){
			chk_listArr[i].checked = this.checked;
		}
	});
	$("input[name='RowCheck']").click(function(){
		if($("input[name='RowCheck']:checked").length==rowCnt) {
			$("input[name='allCheck']")[0].checked = true;
		} else {
			$("input[name='allCheck']")[0].checked = false;
		}
	});
	
}); 

//선택삭제
function deleteValue(){
	var url = "ownerResDelete.do";
	var valueArr = new Array();
	var list = $("input[name='RowCheck']");
	for(var i=0;i<list.length;i++){
		if(list[i].checked) { //선택되어 있으면 배열에 값을 저장
			valueArr.push(list[i].value);
		}
	}
	if (valueArr.length==0){
		alert("삭제할 항목을 선택해주세요.")
	}
	else {
		var chk = confirm("정말 삭제하시겠습니까?");
		if(chk==true){
			$.ajax({
				url : url,
				type : 'POST',
				traditional : true,
				data : {
					valueArr : valueArr
				},
				success : function(jdata){
					if(jdata = 1){
						alert("삭제 성공");
						location.href="ownerRes.do";
					}
				}
			});
		} else {
			alert("삭제 실패");
		}
	}
}


// 달력
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

