var method_svg = new Vivus('method_svg', {duration: 200,animTimingFunction: Vivus.EASE});

function startAni(wd, vv, ob){
	if(wd.scrollTop() <= $(ob).offset().top-500){
		vv.play();
	}
	/*else{
		vv.reset();
	}*/
}

$(window).scroll(function(){
	var scw = $(this);
	startAni(scw,method_svg,'#method_svg');
});