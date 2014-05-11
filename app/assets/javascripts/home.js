$(function(){
  resize_image();
  $(window).on("resize", function(){
    resize_image();
  })
  function resize_image(){
      var height = $(#content).height();
      var width = $(#content).width();
      var logo_height = 0.5*height;
      var logo_width = 0.98*width;
      $("#logo").height(logo_height);
      $("#logo").width(logo_width);
  }
});