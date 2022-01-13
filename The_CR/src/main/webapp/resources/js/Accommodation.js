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

// 사이드 메뉴바 스크롤
$(function() {
	var $menu = $('.sideMenu-atxt-wr ul li'),
		$contents = $('.info .room-info');
		
		$menu.click(function(x) {
			x.preventDefault();
			/*$menu.removeClass('on');
			$(this).addClass('on');*/
			
			// $(this).addClass('on').siblings().removeClass('on');
			var idx = $(this).index();
			var section = $contents.eq(idx);
			var sectionDistance = section.offset().top;

			$('html,body').stop().animate({scrollTop:sectionDistance});
		});
		
		$(window).scroll(function() {
			$contents.each(function() {
				if($(this).offset().top <= $(window).scrollTop()) {
					var idx = $(this).index();
					$menu.removeClass('on');
					$menu.eq(idx).addClass('on');
				}
			});
		});
});

// [이미지 이전/다음 버튼]
// 문서의 내용이 모두 로드되면 할 일
document.addEventListener('DOMContentLoaded', function() {

// 변수
var $sliderWrap = document.querySelector('.room-img-container'),
	$slideContainer = document.querySelectorAll('.slider-container'),
	$slide = document.querySelectorAll('.slide'),
	$slideCount = $slide.length,
	$curruntIndex = 0,
	$timer = undefined,
	// $pagerHTML = '',
	$pager = document.querySelectorAll('.pager'),
	$pagerBtn = document.querySelectorAll('.pager .span'),
	$navPrev = document.querySelectorAll('.prev'),
	$navNext = document.querySelectorAll('.next');

/*// 슬라이드 크기 지정	
	$sliderWrap.style.width = '800px';
	$sliderWrap.style.height = '500px';*/

//슬라이드 있을 시, 가로로 배열
	for(var i=0; i < $slideCount; i++) {	
		
		if(i < 3) {
			$slide[i].style.left = (i) * 100 + '%';
		} else if(i < 6) {
			$slide[i].style.left = (i-3) * 100 + '%';
		} else if(i < 9) {
			$slide[i].style.left = (i-6) * 100 + '%';
		} else if(i < 12){
			$slide[i].style.left = (i-9) * 100 + '%';
		} else {
			$slide[i].style.left = (i-12) * 100 + '%';
		}

		// $pagerHTML +=  '<span data-idx = "' + i +'">' + (i+1) + '</span>';
		// $pager.innerHTML = $pagerHTML;
	}
	// var $pagerBtn = document.querySelectorAll('.pager .span');

// 슬라이드 이동함수
	function goToSlide(idx) {
		
		for(var i=0; i < $slideContainer.length; i++) {
			$slideContainer[i].style.left = -100 * (idx- 3*i)+ '%';
			$slideContainer[i].classList.add('animated');
		}
		
		$curruntIndex =idx;
		
		// 클릭 시, 버튼 색 바뀌기(active 추가)
		for(var i=0; i < $pagerBtn.length; i++) {
			$pagerBtn[i].classList.remove('active');
		}
		if(event.target.classList.value == 'next' || event.target.classList.value == 'prev') {
			$pagerBtn.classList.add('active');
		} else {
			event.target.classList.add('active');
		}
		
	}

	// 다음 버튼 및 이전 버튼
	for(var y=0; y < $navNext.length; y++) {
		$navNext[y].addEventListener('click', function() {
			
			if(($curruntIndex%3) == 2) {
				goToSlide($curruntIndex - 2);
			} else {
				goToSlide($curruntIndex + 1);
			}
		});
	}

	for(var y=0; y < $navPrev.length; y++) {	
		$navPrev[y].addEventListener('click', function() {
			
			if(($curruntIndex%3) == 0) {
				goToSlide($curruntIndex + 2);
			} else {
				goToSlide($curruntIndex - 1);
			}
		});
	}
	
	// pager로 슬라이드 이동
	for(var i=0; i < $pagerBtn.length; i++) {
		$pagerBtn[i].addEventListener('click', function(event) {
			// var pagerNum = event.target.getAttribute('data-idx');
			var pagerNum = event.target.innerText - 1;
			goToSlide(pagerNum);
		});
	}
	
/*	// 자동 슬라이드
	
		3초마다 goToSlide(숫자);
		setInterval(할일, 3000);
	
	function auto_timer() {
		$timer = setInterval(function() {			
			for(var i=0; i < 3; i++) {
				
				var nextIdx = (i + 1) % 3;
				
				if((($slide[i].innerText - 1) % 3) == 0) {
					goToSlide(nextIdx);
					goToSlide(nextIdx + 3);
					goToSlide(nextIdx + 6);
					goToSlide(nextIdx + 9);
					goToSlide(nextIdx + 12);
				} else if((($slide[i].innerText - 1) % 3) == 1) {
					goToSlide(nextIdx);
					goToSlide(nextIdx + 3);
					goToSlide(nextIdx + 6);
					goToSlide(nextIdx + 9);
					goToSlide(nextIdx + 12);
				} else if((($slide[i].innerText - 1) % 3) == 2) {
					goToSlide(nextIdx - 3);
					goToSlide(nextIdx + 1);
					goToSlide(nextIdx + 4);
					goToSlide(nextIdx + 7);
					goToSlide(nextIdx + 10);
				}
			}	
		}, 3000);
	}
	
	function auto_stop() {
		clearInterval($timer);
	}
	
	//$sliderWrap에 마우스가 들어올 시 멈춤(clearInterval)
	$sliderWrap.addEventListener('mouseenter', function() {
		auto_stop();
	});
	
	//$sliderWrap에 마우스가 나갈 시 다시 timer 시작
	$sliderWrap.addEventListener('mouseleave', function() {
		auto_timer();
	});*/
	

});