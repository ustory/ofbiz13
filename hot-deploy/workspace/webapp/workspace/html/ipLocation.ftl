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