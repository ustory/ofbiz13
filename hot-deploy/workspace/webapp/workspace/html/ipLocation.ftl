<h2>根据用户IP地址，确定用户大致地理位置</h2>
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

<#--h2>QQ浮动客服代码</h2-->
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

<h2>百度地图示例</h2>
<style type="text/css">
	#allmap{width:50%;height:500px;margin-left:auto;margin-right:auto;font-family:"微软雅黑";}
</style>
<div id="allmap"></div>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=XW8WC3RmGzykZ6iM6GINiwE4"></script>
<script type="text/javascript">
	// 百度地图API功能
	var map = new BMap.Map("allmap");
	var opts = {
	  width : 200,     // 信息窗口宽度
	  height: 100,     // 信息窗口高度
	  title : "黄埔中心大厦" , // 信息窗口标题
	  enableMessage:true,//设置允许信息窗发送短息
	  message:"黄埔中心大厦，高端写字楼"
	}
	// 创建地址解析器实例
	var myGeo = new BMap.Geocoder();
	// 将地址解析结果显示在地图上,并调整地图视野
	myGeo.getPoint("上海市黄浦区中华路1600号", function(point){
		if (point) {
			map.centerAndZoom(point, 16);
			marker = new BMap.Marker(point);// 创建标注
			map.addOverlay(marker);//,将标注添加到地图中
			var infoWindow = new BMap.InfoWindow("地址：上海市黄浦区中华路1600号", opts);  // 创建信息窗口对象 
			marker.addEventListener("click", function(){    
				map.openInfoWindow(infoWindow,point); //开启信息窗口
			});
		}
	}, "上海市");
</script>