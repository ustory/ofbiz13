<h1>urlRewrite</h1>
<h3>正常请求URL</h3>
<a href="http://127.0.0.1:8080/workspace/control/urlRewrite?id=99999">http://127.0.0.1:8080/workspace/control/urlRewrite?id=99999</a>
<hr>
<h3>静态化URL</h3>
<a href="http://127.0.0.1:8080/workspace/urlRewrite-88888.html">http://127.0.0.1:8080/workspace/urlRewrite-88888.html</a>
【此链接会被解析为：http://127.0.0.1:8080/workspace/control/urlRewrite?id=88888】
<hr>
<h3>未配置的静态化URL</h3>
<a href="http://127.0.0.1:8080/workspace/urlRewrite_77777.html">http://127.0.0.1:8080/workspace/urlRewrite_77777.html</a>
【此链接因找不到匹配的重写规则，会被重定向到该组件的main页面，这是ContextFilter作用的结果】
<hr>
<#if parameters.id?has_content><h4>参数：<font color="blue">${(parameters.id)!}</font></h4></#if>