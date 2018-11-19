$(document).ready(function(){
	setTimeout(function(){
		var typed1 = new Typed('#typed1', {
		strings: ['세계 행복의 날 기념, 같이가치 <br>‘안녕하세요’ 캠페인을 소개합니다!'],
		typeSpeed: 100,
		fadeOut: false,
        cursorChar: ''
	});
	},100)
	
	$(window).scroll(function(){
        var scrollT=$(document).scrollTop();
        var content1=$('.content1 > div:nth-child(2)').offset().top;
        var content2=$('.content2').offset().top;
        
        if(scrollT>content1-50 && scrollT<content2-50){
            $('.content1 > div:nth-child(2)').find('.apeach').fadeIn(300);
        }else{
            $('.content1').find('.apeach').fadeOut(300);
        }
        
        if ($(this).scrollTop() >=
            $('#wrap').offset().top) {
            $('.title').find('.tubo').addClass('textRight');
        } else {
            $('.title').find('.tubo').removeClass('textRight');
        }
    });
});