// JavaScript Document
$(function(){
	
    resizeHeight();//my_oa_page高度自适应 有个最小高度
	myOANavChg();//my_oa_page左侧导航点击
	myNavChg();//my_page左侧导航点击
	
	//my_oa_page高度自适应 有个最小高度
	$(window).resize(function(){
		resizeHeight();
		});
		
		

	
	
	
	//my_oa_page高度自适应 有个最小高
	function resizeHeight(){
		 var winHeight=$(window).height();
		 var otherPartHeight=$("#header_OA").height()+$("#footer_OA").height();
		 $("#myOAPage_left").css("height",winHeight-140);
		 $("#myOAPage_right").css("height",winHeight-140);
		}
		
   
    //my_oa_page左侧导航切换
	function myOANavChg(){
		  $("#my_OAnav a.first_level").each(function(){
			     $(this).click(function(){
					   $("#my_OAnav a.first_level").removeClass("selected");
					   $("#my_OAnav div.my_nav_sub").hide();
					   $(this).addClass("selected");
					   $(this).next().show();
					   $(this).next().find("a:eq(0)").click();
					 });
			  });
			  
		  $("div.my_nav_sub a.sub_item").each(function(){
			     $(this).click(function(){
					   $(this).parent().find("a").removeClass("selected_sub_item");
					   $(this).addClass("selected_sub_item");
					   
					   //切换右侧内容的js未写
					 });
			  });
		}
	
	 //my_page左侧导航切换
	function myNavChg(){
		  $("#my_nav a.first_level").each(function(){
			     $(this).click(function(){
					   $("#my_nav a.first_level").removeClass("selected");
					   $("#my_nav div.my_nav_sub").hide();
					   $(this).addClass("selected");
					   $(this).next().show();
					   $(this).next().find("a:eq(0)").click();
					 });
			  });
			  
		  $("div.my_nav_sub a.sub_item").each(function(){
			     $(this).click(function(){
					   $(this).parent().find("a").removeClass("selected_sub_item");
					   $(this).addClass("selected_sub_item");
					   
					   //切换右侧内容的js未写
					 });
			  });
		}
	
	
	
	
});

function leftChgImg(){
		var listObj=$("div#img_list");
		var imgCurrObj=listObj.find("img.page_img_curr");
		var imgChgObj=imgCurrObj.prev();
		imgCurrObj.removeClass("page_img_curr");
		imgChgObj.addClass("page_img_curr");
		$("a#right_chg").css("display","block");
		if(imgChgObj.prev().length==0){
			$("a#left_chg").css("display","none");
			}
		}
	
	function rightChgImg(){
		var listObj=$("div#img_list");
		var imgCurrObj=listObj.find("img.page_img_curr");
		var imgChgObj=imgCurrObj.next();
		imgCurrObj.removeClass("page_img_curr");
		imgChgObj.addClass("page_img_curr");
		$("a#left_chg").css("display","block");
		if(imgChgObj.next().length==0){
			$("a#right_chg").css("display","none");
			}
		}