


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
        $(".box_shadow").each(function(){
            $(this).after("<div class='ie_box_shadow'></div>");
            $(this).css('z-index:2');
            $(".ie_box_shadow").width($(this).width()).height($(this).height()).css("left", (pos.left + 5) + "px").css("top",(pos.top + 5) + "px");
            $('.ie_box_shadow').css('z-index:1');    
        });
    }
    
    
});