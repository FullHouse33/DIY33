package com.sesoc.test.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class userInterceptor extends HandlerInterceptorAdapter{

   @Override
   public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object obj) throws Exception {

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
			    
		//유저가 아니거나 admin이라면
		if(id == null){ 
			response.sendRedirect("/admin/");
			return false;
		}
		      
		return true;
   }
}