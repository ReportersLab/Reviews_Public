


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
            if($(this).hasClass('overlay'))
                return;
            shadow = $("<div class='ie_box_shadow'></div>");
            $(this).after(shadow);
            $(this).css("z-index", "2").css("position", "relative");
            $(shadow).width($(this).outerWidth() + 10)
                     .height($(this).outerHeight() + 10)
                     .css("left", ($(this).position().left - 5) + "px")
                     .css("top",($(this).position().top - 5) + "px")
                     .css("z-index", "1")
                     .css("margin-top", $(this).css("margin-top"))
                     .css("margin-right", $(this).css("margin-right"))
                     .css("margin-bottom", $(this).css("margin-bottom"))
                     .css("margin-left", $(this).css("margin-left"))
        });
    }
    
    
});