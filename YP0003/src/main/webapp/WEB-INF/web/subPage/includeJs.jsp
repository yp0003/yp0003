<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<link rel="icon" href="http://www.ibeifeng.com/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="http://www.ibeifeng.com/favicon.ico" type="image/x-icon">
<script src="http://www.ibeifeng.com/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript">
	
	$(function(){
		var jsArr = [
			'http://www.ibeifeng.com/fancybox/jquery.fancybox-1.3.4.pack.js',
			'http://www.ibeifeng.com/fancybox/jquery.mousewheel-3.0.4.pack.js',
			'http://www.ibeifeng.com/js/jquery.masonry.min.js',
			'http://www.ibeifeng.com/js/jquery.easing.js',
			'http://www.ibeifeng.com/js/respond.min.js',
			'http://www.ibeifeng.com/js/jquery.jCarousel.js',
			'http://www.ibeifeng.com/js/shopping_flow.js',
			'http://www.ibeifeng.com/js/bf.js'
		];
		
			for(var i=0;i<jsArr.length;i++){
				var element = document.createElement("script");
				element.src = jsArr[i];
				document.body.appendChild(element);
			}
	});
//	if (window.addEventListener)
//		window.addEventListener("load", downloadJSAtOnload, false);
//	else if (window.attachEvent)
//		window.attachEvent("onload", downloadJSAtOnload);
//	else window.onload = downloadJSAtOnload;
</script><script type="text/javascript" src="http://www.ibeifeng.com/js/jquery.validate.js"></script>
<script type="text/javascript" src="http://www.ibeifeng.com/js/formCheck.js"></script>
<script src="http://www.ibeifeng.com/js/lazyload.js"></script>
<script  type="text/javascript">
  var _sogou_sa_q = _sogou_sa_q || [];
  _sogou_sa_q.push(['_sid', '176753-181385']);
 (function() {
    var _sogou_sa_protocol = (("https:" == document.location.protocol) ? "https://" : "http://");
    var _sogou_sa_src=_sogou_sa_protocol+"hermes.sogou.com/sa.js%3Fsid%3D176753-181385";
    document.write(unescape("%3Cscript src='" + _sogou_sa_src + "' type='text/javascript'%3E%3C/script%3E"));
    })();
</script>