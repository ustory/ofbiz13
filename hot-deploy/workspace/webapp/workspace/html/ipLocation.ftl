<h1>�����û�IP��ַ��ȷ���û����µ���λ��</h1>
<script type="text/javascript">
$(document).ready(function(){
	//ͨ����������IP��ַ��ӿڲ�ѯ�û���ǰ���ڹ��ҡ�ʡ�ݡ����С���Ӫ����Ϣ
	$.getScript('http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=js',function(){
	   $(".country").html(remote_ip_info.country);
	   $(".province").html(remote_ip_info.province);
	   $(".city").html(remote_ip_info.city);
	   $(".ip").html(remote_ip_info.ip);
	   $(".isp").html(remote_ip_info.isp);
	   });
	});
</script>
<div>���ң�<span class="country"></span></div>
<div>ʡ�ݣ�<span class="province"></span></div>
<div>���У�<span class="city"></span></div>
<div>IP��ַ��<span class="ip"></span></div>
<div>��Ӫ�̣�<span class="isp"></span></div>

===========================================<br>
�����ͷ�
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