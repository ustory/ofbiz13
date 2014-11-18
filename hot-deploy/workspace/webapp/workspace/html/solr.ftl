<h1>Solr检索</h1>
<form name="solr" action="<@ofbizUrl>solr</@ofbizUrl>" method="post">
	<lable>关键字：</lable>
	<input name="keyword" value="${(parameters.keyword)!}">
	<input type="submit" value="查询">
</form>
${searchResult}<hr>
<#if searchResult?exists>
	<#list searchResult as result>
		<div id="result">id:${(result.id)!}====name:${(result.name)!}====type:${(result.type)!}====description:${(result.description)!}</div>
	</#list>
</#if>