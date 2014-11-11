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