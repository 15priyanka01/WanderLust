package com.mmt.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mmt.model.bean.Flight;
import com.mmt.model.bean.User;
import com.mmt.model.bl.FlightBookingBlMMT;
import com.mmt.model.bl.FlightPaymentBl;
import com.mmt.model.bl.PromotionBlMMT;

public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String promoPickedID = request.getParameter("promoflight");
		String flightIDPicked = (String) session.getAttribute("flightId");
		User user=(User) session.getAttribute("user");
		String userId=user.getUserId();
		int noOfSeats = Integer.parseInt((String) session.getAttribute("seats"));
		FlightBookingBlMMT flightBookingBlMMT = new FlightBookingBlMMT();
		FlightPaymentBl flightPaymentBl = new FlightPaymentBl();
		float cartValue = 0;
		try {
			cartValue = flightPaymentBl.cartValue(
					(float) (flightBookingBlMMT.searchFlight(flightIDPicked)).getFlightTicketPrice(), noOfSeats);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		PromotionBlMMT promotionBlMMT = new PromotionBlMMT();
		float valueAfterPromotion=0;
		try {
			valueAfterPromotion=promotionBlMMT.applyPromotion(promotionBlMMT.searchPromotion(promoPickedID), userId, cartValue);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			if(flightPaymentBl.checkFunds(userId, valueAfterPromotion)){
				// THere is sufficient funds in account------------------
				//Redirect to Confirm Payment JSP Page
			}
			else{
				//Insufficient Funds
				//Redirect to Add money to wallet and then redirect to confirm payment JSP Page
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
