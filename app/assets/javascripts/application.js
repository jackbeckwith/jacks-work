// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(function(){
	$("#new-user").hover(function(){
		var oldText = $(this).text();
  		$(this).text(oldText + " - Give it a try!");
  	});
});

$(function(){
	$("#new-user").hover(function(){
		$("#new-user").css("color", "white");
	});
});

$(function(){
	$(".text-link").hover(function(){
		$(".text-link").css("font-size", "17px");
	});
});

//$(function(){
//	$("#dropdown").click(function(){
//		$(".dropdown").css({border: 1, border-radius: 2, border-color: white})
//	});
//});
