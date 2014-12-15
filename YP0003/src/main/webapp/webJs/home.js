/**
 * 
 */

$(function(){
		
	var aPage = $('.slider_num a');		//分页按钮
	var aImg = $('.slider div');		//图像集合
	var iSize = aImg.size();		//图像个数
	var index = 0;		//切换索引
	var t;
	$('#btnLeft').click(function(){		//左边按钮点击
		index--;
		if(index<0){
			index=iSize-1;
		}
		change(index);
	})
	$('#btnRight').click(function(){    //右边按钮点击
		index++;
		if(index>iSize-1){
			index=0;
		}
		change(index);
	})
	//分页按钮点击
	aPage.click(function(){
		index = $(this).index();
		change(index);
	});
	//切换过程
	function change(index){
		aPage.removeClass('active');
		aPage.eq(index).addClass('active');
		aImg.stop();
		//隐藏除了当前元素，所以图像
		aImg.eq(index).siblings().animate({
			opacity:0
		},1000,function(){aImg.eq(index).siblings().css("display","none")})
		//显示当前图像
		aImg.eq(index).css("display","block");
		aImg.eq(index).animate({
			opacity:1
		},1000);
	}
	 
	function autoshow() {
		index=index+1;
		if(index<=iSize-1){
		   change(index);
		}else{
			index=0;
			change(index);
		}
			
	}
	int=setInterval(autoshow,5000);
	function clearInt() {
		$('#btnLeft,#btnRight,.slider_num a').mouseover(function() {
			clearInterval(int);
		})
	
	}
	function setInt() {
		$('#btnLeft,#btnRight,.slider_num a').mouseout(function() {
			int=setInterval(autoshow,5000);
		})
	}
	
	
	clearInt();
	setInt();
});

$(function(){
	 $(".home_combo .home_combo1").hover(function() {
		var seat = $(this).attr("seat");
		if(seat==1){
			$(this).stop().animate({"top":"-400px"}, 200); 
			}else{
				$(this).stop().animate({"top":"-195px"}, 200); 
				}
		
	}, function() {
		$(this).stop().animate({"top":"0"}, 200); 
	});
	
	
	$(".course_tab_list li").mouseover(function(){
		if($(this).attr("class")!='more'){
				var i = $(this).index();
					$(".course_tab_list li").removeClass("more");
					$(this).addClass("more");
					$('ul[id^=course_list]').hide();
					$("#course_list"+i).show();
			}
		})
		/*$("#tag li").click(function(){
			$("#search").val($(this).text());
			$("#form").submit();
			})*/
		
		var num = $("#tag li").length;
		if(num>15){
				$("#tag li:gt(14)").hide();
				$(".moreshow").click(function(){
					$("#tag li:gt(14)").slideToggle();
					if($(this ).find("span").text()=='展开全部显示'){
							$(this ).find("span").text('收回显示');
						}else{
								$(this ).find("span").text('展开全部显');
							}
				})
			}else{
				  $(".moreshow").hide();
				}
		
		
		
	});