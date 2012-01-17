


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
    
    
    
    if ($.browser.msie) {
        var elements = $(".box_shadow");
        $(elements).after("<div class='ie_box_shadow'></div>");
        $(".ie_box_shadow").width($(element).width()).height($(element).height()).css("left", (pos.left + 5) + "px").css("top",(pos.top + 5) + "px");
    }
    
    
});