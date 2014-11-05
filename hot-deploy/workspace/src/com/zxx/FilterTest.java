package com.zxx;

import java.io.IOException;
import java.util.List;

import javax.servlet.FilterChain;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.ofbiz.base.util.StringUtil;
import org.ofbiz.webapp.control.ContextFilter;

public class FilterTest extends ContextFilter{
	public static  final String module = FilterTest.class.getName();
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException{
		HttpServletRequest httpRequest = (HttpServletRequest) request;
        
        StringBuilder urlBuilder = new StringBuilder();
        urlBuilder.append("/control/urlRewrite?");
        
        String pathInfo = httpRequest.getServletPath();
        if(!pathInfo.startsWith("/filter")){
        	chain.doFilter(request, response);
        	return;
        }
        List<String> pathElements = StringUtil.split(pathInfo, "/");
        String id = pathElements.get(1);
        
        urlBuilder.append("id=" + id.substring(0,id.indexOf(".")));
        //http://127.0.0.1:8080/workspace/filter/56789.html ==》
        //http://127.0.0.1:8080/workspace/control/urlRewrite?id=56789
        RequestDispatcher dispatch = request.getRequestDispatcher(urlBuilder.toString());
		dispatch.forward(request, response);
        return;
	}
}
