package com.sesoc.test.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class companyInterceptor extends HandlerInterceptorAdapter{

   @Override
   public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object obj) throws Exception {

		HttpSession session = request.getSession();
		
		String id = (String) session.getAttribute("id");
		String coId = (String) session.getAttribute("CoId");
		    
		//기업 유저가 아니거나 관리자가 아니면
		if(coId == null || id != "admin"){  
			response.sendRedirect("/admin/");
			return false;
		}
		  
		return true;
   }
}