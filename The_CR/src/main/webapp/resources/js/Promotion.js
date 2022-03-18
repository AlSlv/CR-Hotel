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

//사이드 메뉴바 스크롤
$(function() {
	var $menu = $('.contbts-wr ul li'),
		$contents = $('.cont-wr .cont1');
		
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
