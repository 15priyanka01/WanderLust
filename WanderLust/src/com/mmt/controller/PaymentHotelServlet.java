package com.mmt.controller;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.concurrent.TimeUnit;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mmt.model.bean.User;
import com.mmt.model.bl.HotelBlMMT;
import com.mmt.model.bl.HotelPaymentBl;
import com.mmt.model.bl.PromotionBlMMT;

public class PaymentHotelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String promoPickedID = request.getParameter("promohotel");
		String hotelIDPicked = (String) session.getAttribute("hotelId");
		User user = (User) session.getAttribute("user");
		String userId = user.getUserId();
		float roomPrice=(float) session.getAttribute("roomPrice");
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
		session.setAttribute("checkInDate",dcheckIn );
		session.setAttribute("checkOutDate", dcheckOut);
		session.setAttribute("duration", duration);
		session.setAttribute("hotelID",hotelIDPicked);
		HotelBlMMT hotelBlMMT=new HotelBlMMT();
		HotelPaymentBl hotelPaymentBl=new HotelPaymentBl();
		float cartValue = 0;
		cartValue=hotelPaymentBl.cartValue(roomPrice, duration);
		
		PromotionBlMMT promotionBlMMT = new PromotionBlMMT();
		double valueAfterPromotion = 0;
		
		try {
			valueAfterPromotion = promotionBlMMT.applyPromotion(promotionBlMMT.searchPromotion(promoPickedID), userId,
					cartValue);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			if (hotelPaymentBl.checkFunds(userId, valueAfterPromotion)) {
				
				// THere is sufficient funds in account------------------
				// Redirect to Confirm Payment JSP Page
				
				session.setAttribute("finalValuetobepaid", valueAfterPromotion);
				//System.out.println("Enter loop4:----- ");

				RequestDispatcher dispatch = request.getRequestDispatcher("ConfirmHotelBooking.jsp");
				dispatch.forward(request, response);
			} else {
				
				
				
				
				// Insufficient Funds
				// Redirect to Add money to wallet and then redirect to confirm
				// payment JSP Page
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
