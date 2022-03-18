// [TOP 버튼]
$(function(){
	$(window).scroll(function() {
		if($(this).scrollTop() >= 300) {
			$('.topbts').fadeIn();
		} else {
			$('.topbts').fadeOut();
		}
	});
	
	$('.topbts').click(function() {
		e.preventDefault();
		$('html, body').stop().animate({scrollTop:0}, 500);
	});
});

//상태 = 답변완료일 경우 배경색 바뀌어 보이기
$(function() {
	var $complete = document.querySelectorAll('#tdspan')
	for(var i=0; i < $complete.length; i++) {
		if($complete[i].innerText == '답변 완료') {
			$complete[i].style.backgroundColor = 'red';
			$complete[i].style.borderColor = 'red';
		}
	} 
});

// 내용 글자수 카운팅
	/*e.preventDefault();*/

	var $totalByte = 0;
	var $message = '';
  
	function count($message) {
		$totalByte = 0;
	    for(var i=0, $length = $message.length; i < $length; i++) {
	       var $currentByte = $message.charCodeAt(i);
	       (($currentByte > 128) ? $totalByte += 2 : $totalByte++);
	    }
	    return $totalByte;
	}
	
	function checkByte(event) {
	    const $totalByte = count($('#summernote').val());
	    if ($totalByte <= 2000) {
	        $message = $('#summernote').val();
	        document.getElementById("count").innerText = $totalByte.toString();
	    } else {
	        alert(2000 + "바이트까지 입력가능합니다.");
	        document.getElementById("count").innerText = count($message).toString();
	        document.getElementById("summernote").value = $message.substring(0,1000);
	    }
	}

// pager 현재 페이지 버튼 색 표시
	window.addEventListener('DOMContentLoaded', function() {

	var $pager = document.querySelectorAll("#pagerbtnp");

	var url = window.location.href;
	var cut1 = url.split('?');
	if (cut1[1] == null) {
		$pager[0].classList.add('action');
	} else {
		var cut2 = cut1[1].split('&');
		if (cut2[1] == null) {
			$pager[0].classList.add('action');
		} else {
			var cut3 = cut2[0].split('=');
			var i = cut3[1];
			if (i > 5) {
				i = i % 5;
				i--;
				$pager[i].classList.add('action');
			} else {
				i--;
				$pager[i].classList.add('action');
			}

		}
	}

});
	
// 삭제 버튼 클릭 시,
    function reDelCheck(contIdx) {
        var query = {idx : contIdx};
        var ans = confirm("\n정말 삭제하시겠습니까?\n\n주의! 삭제 시, 데이터를 복구할 수 없습니다");
        if(!ans) return false;
        
        $.ajax({
            url  : "deleteBoard.do?num=" + contIdx,
            type : "get",
            data : query,
            success : function(data) {
                    alert("\n선택하신 글이 삭제 되었습니다");
                  location.href="getAllBoard.do";
            },
            error : function(data) {
                alert("\n선택하신 글이 삭제되지 않았습니다");
            }
        });
    }
    
    function reDelCheckA(contIdx) {
        var query = {idx : contIdx};
        var ans = confirm("\n정말 삭제하시겠습니까?\n\n주의! 삭제 시, 데이터를 복구할 수 없습니다");
        if(!ans) return false;
        
        $.ajax({
            url  : "deleteABoard.do?num=" + contIdx,
            type : "get",
            data : query,
            success : function(data) {
                    alert("\n선택하신 글이 삭제 되었습니다");
                  location.href="getAllBoard.do";
            },
            error : function(data) {
                alert("\n선택하신 글이 삭제되지 않았습니다");
            }
        });
    }
