<h1>根据用户IP地址，确定用户大致地理位置</h1>
<script type="text/javascript">
$(document).ready(function(){
	//通过调用新浪IP地址库接口查询用户当前所在国家、省份、城市、运营商信息
	$.getScript('http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=js',function(){
	   $(".country").html(remote_ip_info.country);
	   $(".province").html(remote_ip_info.province);
	   $(".city").html(remote_ip_info.city);
	   $(".ip").html(remote_ip_info.ip);
	   $(".isp").html(remote_ip_info.isp);
	   });
	});
</script>
<div>国家：<span class="country"></span></div>
<div>省份：<span class="province"></span></div>
<div>城市：<span class="city"></span></div>
<div>IP地址：<span class="ip"></span></div>
<div>运营商：<span class="isp"></span></div>

===========================================<br>
浮动客服
<link href="../images/rmenu.css" rel="stylesheet" type="text/css">
<script src="../images/rmenu.js" type="text/javascript"></script>
<div id="izl_rmenu" class="izl-rmenu">
	<a href="http://wpa.qq.com/msgrd?v=3&amp;uin=123456789&amp;site=qq&amp;menu=yes" target="_blank" class="btn btn-qq"></a>
	<div class="btn btn-wx">
		<img class="pic" src="../images/weixin.jpg" onclick="window.location.href='#'">
	</div>
	<div class="btn btn-phone">
		<div class="phone">400 800 4008</div>
	</div>
	<div class="btn btn-top"></div>
</div>