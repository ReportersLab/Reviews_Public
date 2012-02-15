


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
    
    
    
    if ($.browser.msie && ( parseInt($.browser.version, 10) < 9 )) {
        $(".box_shadow").each(function(){
            if($(this).hasClass('overlay'))
                return;
            shadow = $("<div class='ie_box_shadow'></div>");
            $(this).after(shadow);
            $(this).css("z-index", "2").css("position", "relative");
            $(shadow).width($(this).outerWidth())
                     .height($(this).outerHeight())
                     .css("left", ($(this).position().left -5) + "px") //ie tester keeps going crazy over this, can't tell if I need the 5px or not.
                     .css("top",($(this).position().top -5) + "px")
                     .css("z-index", "1")
                     .css("margin-top", $(this).css("margin-top"))
                     .css("margin-right", $(this).css("margin-right"))
                     .css("margin-bottom", $(this).css("margin-bottom"))
                     .css("margin-left", $(this).css("margin-left"))
        });
    }
    
    
});
 
 
 
 
 
 $(document).ready(function(){
    setTimeout("checkFonts()",2000);
 });
 
 function checkFonts()
 {
    leagueWidth = $("#league_gothic_tester").width();
    arialWidth = $("#arial_tester").width();
    //if they're the same, the League Gothic font didn't load properly. Let's load some different styles.
    if(leagueWidth == arialWidth){
        $("body").addClass("arial_only");
    }
 }