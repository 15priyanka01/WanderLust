package com.mmt.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.concurrent.TimeUnit;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mmt.model.bean.User;

public class PaymentHotelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String promoPickedID = request.getParameter("promohotel");
		String hotelIDPicked = (String) session.getAttribute("hotelId");
		User user = (User) session.getAttribute("user");
		String userId = user.getUserId();
		Date dcheckIn = null;
		Date dcheckOut = null;
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MMM-yyyy");
		try {
			dcheckIn = (Date) dateFormat.parse((String) session.getAttribute("from"));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		SimpleDateFormat dateFormat1 = new SimpleDateFormat("dd-MMM-yyyy");
		try {
			dcheckOut = (Date) dateFormat1.parse((String) session.getAttribute("to"));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		long diff = dcheckOut.getTime() - dcheckIn.getTime();
		int duration = (int) TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS);
		
		session.setAttribute("duration", duration);
		
		

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
