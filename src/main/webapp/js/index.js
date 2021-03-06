$(window).resize(function() {
	navH();
	frameWidthSet() ;
	frameHeightSet() ;
});
$(window).load(function() {
	navH();
})
$(document).ready(function() {
	navSet();
	frameWidthSet() ;
});
$("iframe").load(function() {
	frameHeightSet() ;
	navH() ;
})
// 导航栏高度
function navH() {
	var h = $(window).height() - 180;
	$(".list").css("height", h);
}
// 导航栏
function navSet() {
	$('.inactive').click(
			function() {
				if ($(this).siblings('ul').css('display') == 'none') {
					$(this).parent('li').siblings('li')
							.removeClass('inactives');
					$(this).addClass('inactives');
					$(this).siblings('ul').slideDown(100).children('li');
					if ($(this).parents('li').siblings('li').children('ul')
							.css('display') == 'block') {
						$(this).parents('li').siblings('li').children('ul')
								.parent('li').children('a').removeClass(
										'inactives');
						$(this).parents('li').siblings('li').children('ul')
								.slideUp(100);
					}
				} else {
					// 控制自身变成+号
					$(this).removeClass('inactives');
					// 控制自身菜单下子菜单隐藏
					$(this).siblings('ul').slideUp(100);
					// 控制自身子菜单变成+号
					$(this).siblings('ul').children('li').children('ul')
							.parent('li').children('a').addClass('inactives');
					// 控制自身菜单下子菜单隐藏
					$(this).siblings('ul').children('li').children('ul')
							.slideUp(100);
					// 控制同级菜单只保持一个是展开的（-号显示）
					$(this).siblings('ul').children('li').children('a')
							.removeClass('inactives');
				}
			})
}

// 框架高度设置
function frameHeightSet() {
	var frame = $("iframe") ;
	var h = frame[0].contentDocument.body.scrollHeight ;
	frame.attr("height",h) ;
}
//框架宽度
function frameWidthSet() {
	var frame = $("iframe") ;
	var w = $(window).width() - 230;
	frame.attr("width",w) ;
}
