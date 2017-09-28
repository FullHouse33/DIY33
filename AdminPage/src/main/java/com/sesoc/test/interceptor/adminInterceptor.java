package com.sesoc.test.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class adminInterceptor extends HandlerInterceptorAdapter{

   @Override
   public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object obj) throws Exception {

	   	HttpSession session = request.getSession();
	   	String id = (String) session.getAttribute("id");
	    
      	if(!"admin".equals(id)){
      		response.sendRedirect("/admin/");
            return false;
      	}

      	return true;
   }
}