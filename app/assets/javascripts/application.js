// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
var t;
var timer_is_on=1;


function myproc()
{
  alert("oscar");
  
}

function myproc2()
{
 alert("dostres");

}

function buttonclick()
{
$("h1").hide();
}

function showinfo()
{
	document.getElementById("theline").collapse()
}

function weekend()
{
var d=new Date();
var theDay=d.getDay();
switch (theDay)
{
case 5:
  document.getElementById("button").innerHTML = "Finally Friday";
  break;
case 6:
  document.getElementById("button").innerHTML = "Super Saturday";
  break;
case 0:
  document.getElementById("button").innerHTML = "Sleepy Sunday";
  break;
default:
  document.getElementById("button").innerHTML = "I'm looking forward to this weekend!";
}
}

$(document).ready(function(){
  $(".start").click(function(){
     timer_is_on = 1;
     timedCount()
  });
});

function timedCount()
{
 if (timer_is_on)
 {
     $(".square").animate({height:Math.random()*100},"fast");
     $(".square").animate({width:Math.random()*100},"slow");
     $(".square").animate({height:Math.random()*100},"fast");
     $(".square").animate({width:Math.random()*100},"slow");
     t=setTimeout("timedCount()",1000);
 }
}


function stopCount()
{
clearTimeout(t);
timer_is_on=0;
}

