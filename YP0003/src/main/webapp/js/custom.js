/** 自定义jQuery **/
$(function(){
	/**
	 * 全选反选效果
	 * **/
	$('.check-t').click(function(){
		var t = $(this).text();
		if(t=='全选'){
			$(this).text('反选');
			$('.table input[type="checkbox"]').each(function(){
				this.checked = true;
			});
			
		}else{
			$(this).text('全选');
			$('.table input').attr('checked',false);
		}
	});
	/**
	 * 购物车全选反选效果
	 **/
	$('.check-g').click(function() {
		var state = this.checked;
		$('input[type="checkbox"]').each(function() {
			this.checked = state;
		});
	});
	/**
	 * 购物车商品加减
	 * **/
/*	$('.jian').click(function(){
		var num = $(this).next('.num-z').text();
		var pic = $(this).attr('pic');
		if(num == 1){
			alert('请至少选择一项');
		}else{
			$(this).parent().next('.pic').text((num-1)*pic);
			$(this).next('.num-z').text(num-1);
		}
	});
	
	$('.jia').click(function(){
		var num = $(this).parent().find('.num-z').text();
		var pic = $(this).attr('pic');
		$(this).parent().next('.pic').text(parseInt((parseInt(num)+1)*pic));
		$(this).parent().find('.num-z').text(parseInt(num)+parseInt(1));
	});*/
	
	/**
	 * tab 切换
	 * **/
	$('.tab-s').hover(function(){
		$('.sp').hide();
		$('.tab-ul li').each(function(){
			$(this).attr('class','tab-s');
		});
		$('.tj_'+$(this).attr('n')).show();
		$(this).attr('class','def tab-s');
		
	});
	
	/***
	 * 购买平台tab切换
	 * **/
	$('.tab-z').click(function(){
		$('.sp').hide();
		$('.tab-ul li').each(function(){
			$(this).attr('class','tab-z');
		});
		$('.z_'+$(this).attr('n')).show();
		$(this).attr('class','def tab-z');
	});
	
	$('.bankCard').click(function(){
		//初始化
		$('.bankCard').attr('class','bankCard');
		$(this).attr('class','bankCard nCardCil');
	});
	
});