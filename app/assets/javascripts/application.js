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

var oldText;

$(function(){
	$("#new-user").hover(
		function(){
			oldText = $(this).text();
  			$(this).text(oldText + " - Don't Be Shy!");
  			$("#new-user").css("font-weight", "bold")
  	},
       function() {
          $(this).text(oldText);
          $("#new-user").css("font-weight", "normal")
    });
});

$(function(){
	$("#text-link").hover(function(){
		$("#text-link").css("color", "white");
	},
		function(){
			$("#text-link").css("color", "rgb(200,200,200)")
	});
});
