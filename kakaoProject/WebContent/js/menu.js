$(document).ready(function(){
	$(".menu_lion").mouseover(function(){
		$(".menu_category .menu_item").slideDown(1000);
	});
	
	$(".menu_lion").mouseleave(function(){
		$(".menu_category .menu_item").slideUp(1000);
	});
});