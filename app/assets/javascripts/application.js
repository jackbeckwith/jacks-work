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
var oldFont;

$(function(){
	$("#new-user :first-child").hover(
		function(){
			oldText = $(this).text();
  			$(this).text(oldText + " - Try It!");
  			$("#new-user").css("font-size", "17px");
  			$("#new-user").css("color", "white");
  	},
       function() {
           $(this).text(oldText);
           $("#new-user").css("font-weight", "normal");
           $("#new-user").css("font-size", "13px");
           $("#new-user").css("color", "rgb(200,200,200)");
    });
});