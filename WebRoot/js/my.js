/*
window.onload=function(){
	
	alert("ok");
}
*/
/*
jQuery(function(){
	alert("ok");	
});
*/
//$(function(){
	//alert("ok");
$(document).ready(function(){	
	$("#btnTest").click(function(){
		//$("#div1").html("<h1>jQuery</h1>");
		var $v=$("#div1");   //jQuery对象 --->dom的数组
		//$v.html("<h1>jQuery</h1>");
		//$v.innerHTML="<img src='image/1.jpg'/>";
		$v[0].innerHTML="<img src='image/1.jpg'/>";
		//$("div:even").html("<h1>jQuery</h1>");
		//$("div:odd").html("<h1>jQuery Odd</h1>");
		var v=document.getElementById("div2");  //DOM对象--->$()
		//v.innerHTML="<img src='image/1.jpg'/>";
		//v.html("<h1>jQuery</h1>");
		$(v).html("<h1>jQuery</h1>");
		

	});
	$("div").mouseover(function(){
		$(this).css("background-color","blue");
		
	});
	$("div").mouseout(function(){
		$(this).css("background-color","gray");
		
	});	
	
	$("#btnAdd").click(function(){
		//alert($(":text").val());
		//$(":text").val("haha");
		//$("ul").append("<li>"+$(":text").val()+"</li>");
		//$("img").attr("src","image/2.jpg");
		//alert($("img").attr("src"));
		$("div").remove();
	});
	$("img").click(function(){
		$(this).toggleClass("class2");
	});
	$("#btnshow").click(function(){
		//$("img").show(2000);
		$("img").slideDown(2000);
	});
	$("#btnhide").click(function(){
		//$("img").hide(2000);
		$("img").slideUp(2000);
	});		
	$("#btntoggle").click(function(){
		//$("img").hide(2000);
		$("img").slideToggle(2000);
	});		
});