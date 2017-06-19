$(document).ready(function(){
  console.log("jQuery script is running...")
  $("#button1").click(function(){
      $("p").hide();
  });
  $("#button2").hover(function(){
    $("h1").animate({"opacity": 0});
  });
  $("#button2").mouseleave(function(){
    $("h1").animate({"opacity": 100});
  });
  $("#button2").click(function(){
    $("h1").attr.color = 'blue';
  });
});