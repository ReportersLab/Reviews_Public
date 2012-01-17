$(function(){
    
    
    //IE Shadow Fix
    if ($.browser.msie){
        var $elm = $(".box_shadow");
        var pos = $(elm).position();
        $elm.after("<div class='ie-shadow'></div>");
        $(".ie-shadow").width($(elm).width()).height($(elm).height()).css("left", (pos.left + 5) + "px").css("top",(pos.top + 5) + "px");
    }
    
});



 $(function() {
	if(!$.support.placeholder) { 
		var active = document.activeElement;
		$(':text').focus(function () {
			if ($(this).attr('placeholder') != '' && $(this).val() == $(this).attr('placeholder')) {
				$(this).val('').removeClass('hasPlaceholder');
			}
		}).blur(function () {
			if ($(this).attr('placeholder') != '' && ($(this).val() == '' || $(this).val() == $(this).attr('placeholder'))) {
				$(this).val($(this).attr('placeholder')).addClass('hasPlaceholder');
			}
		});
		$(':text').blur();
		$(active).focus();
		$('form').submit(function () {
			$(this).find('.hasPlaceholder').each(function() { $(this).val(''); });
		});
	}
});