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
});