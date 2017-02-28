package com.mmt.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mmt.model.bean.User;
import com.mmt.model.bl.UserBlMMT;

public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		User user = new User();
		UserBlMMT blMMT = new UserBlMMT();
		user.setUserId(request.getParameter("userId"));
		user.setUserName(request.getParameter("userName"));
		user.setUserPhoneNo(Integer.parseInt(request.getParameter("userPhoneNo")));
		user.setUserEmailId(request.getParameter("userEmailId"));
		user.setUserAddress(request.getParameter("userAddress"));

		try {
			if (blMMT.searchUser(user.getUserId()) == null) {
				blMMT.register(user);

			} else {
				// call already register
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
