package com.af1509.interceptor;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class LoginCheckInterceptor implements Interceptor {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8782813343772367730L;

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void init() {
		// TODO Auto-generated method stub

	}

	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		// TODO Auto-generated method stub
		
		HttpSession session=ServletActionContext.getRequest().getSession();
		if(session.getAttribute("username")==null){
			return "login";
		}else{
			return arg0.invoke();
		}		
	}

}
