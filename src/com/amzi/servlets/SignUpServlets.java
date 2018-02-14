package com.amzi.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amzi.bean.SignUpBean;
import com.amzi.dao.SignUpDao;

public class SignUpServlets extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public SignUpServlets() {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Copying all the input parameters in to local variables
		String fullName = request.getParameter("fullname");
		String email = request.getParameter("email");
		String userName = request.getParameter("username");
		String password = request.getParameter("password");

		SignUpBean registerBean = new SignUpBean();
		// Using Java Beans - An easiest way to play with group of related data
		//registerBean.setFullName(fullName);
		//registerBean.setEmail(email);
		//registerBean.setUserName(userName);
		//registerBean.setPassword(password);

		SignUpDao registerDao = new SignUpDao();

		// The core Logic of the Registration application is present here. We are going
		// to insert user data in to the database.
		boolean userRegistered = registerDao.registerUser(registerBean);

		if (userRegistered== true) // On success, you can display a message to user on Home page
		{
			request.getRequestDispatcher("/welcome.jsp").forward(request, response);
		} else // On Failure, display a meaningful message to the User.
		{
			request.setAttribute("errMessage", userRegistered);
			request.getRequestDispatcher("/index.jsp").forward(request, response);
		}
	}
}
