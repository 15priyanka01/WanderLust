package com.mmt.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mmt.model.bean.FlightBooking;
import com.mmt.model.bean.User;
import com.mmt.model.bl.FlightBookingBlMMT;
import com.mmt.model.bl.WalletBlMMT;

public class ConfirmFlightBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		double valueAfterPromotion = (double) session.getAttribute("finalValuetobepaid");
		User user = (User) session.getAttribute("user");
		boolean paymentStatus = false;
		//System.out.println("Entererd here");
		WalletBlMMT walletBlMMT = new WalletBlMMT();
		try {
			//System.out.println("UserID------: "+user.getUserId());
			//System.out.println("valueAfterPromotion------: "+valueAfterPromotion);
			paymentStatus = walletBlMMT.subtractWalletMoney(user.getUserId(),valueAfterPromotion);
		//	System.out.println("paymentStatus: "+paymentStatus);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(paymentStatus){
			FlightBookingBlMMT flightBookingBlMMT=new FlightBookingBlMMT();
			FlightBooking flightBooking=new FlightBooking();
			String flightIDPicked = (String) session.getAttribute("flightId");
			String source=(String) session.getAttribute("source");
			String destination = (String) session.getAttribute("destination");
			int seats=(int) session.getAttribute("seats");
			try {
				flightBooking=flightBookingBlMMT.bookFlight(user.getUserId(), flightIDPicked, source, destination, seats);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			if(flightBooking!=null){
				
				
				session.setAttribute("flightBooking", flightBooking);
				RequestDispatcher dispatch = request.getRequestDispatcher("FinalFlightStep.jsp");
				dispatch.forward(request, response);
			}
			
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
