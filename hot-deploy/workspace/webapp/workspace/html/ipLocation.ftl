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