package com.sts.um.bean;

import com.sts.um.bean.UserBean;

import jakarta.servlet.http.HttpServletRequest;

public class UserDataUtils {
	
	public static UserBean getExistingUserData(HttpServletRequest request) {
		
		String idParam = request.getParameter("id");
		int id = 0; // Default value for id
		
		if (idParam != null && !idParam.isEmpty()) {
			id = Integer.parseInt(idParam);
		}
		
		//int  id =Integer.parseInt(request.getParameter("id")) ;
	    String name = request.getParameter("name");
	    String email = request.getParameter("email");
	    String password = request.getParameter("pass");
	    String mobile = request.getParameter("contact");
	    String education = request.getParameter("education");
	    String age = request.getParameter("age");
	    String gender = request.getParameter("gender");
	    String[] hobbies = request.getParameterValues("hobbies");
		String hobby = "";
		
		if (hobbies != null) {
			hobby = String.join(", ", hobbies);
		}
		
	    //String[] hobbies = request.getParameterValues("hobbies");
	    //String hobby = String.join(", ", hobbies);
		
	    String detail = request.getParameter("details");
	    String comment = request.getParameter("comment");

	    UserBean existingUser = new UserBean(id, name, password, email, mobile, education, age, gender, hobby, detail, comment);
	    return existingUser;
	}


}
