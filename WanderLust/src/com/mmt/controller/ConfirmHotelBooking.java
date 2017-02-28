package com.mmt.controller;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mmt.model.bean.HotelBooking;
import com.mmt.model.bean.User;
import com.mmt.model.bl.HotelBlMMT;
import com.mmt.model.bl.WalletBlMMT;

public class ConfirmHotelBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		float valueAfterPromotion = (float) session.getAttribute("finalValuetobepaid");
		User user = (User) session.getAttribute("user");
		boolean paymentStatus = false;
		// System.out.println("Entererd here");
		WalletBlMMT walletBlMMT = new WalletBlMMT();

		try {
			paymentStatus = walletBlMMT.subtractWalletMoney(user.getUserId(), (double) valueAfterPromotion);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if (paymentStatus) {
			HotelBlMMT hotelBlMMT = new HotelBlMMT();
			HotelBooking hotelBooking = new HotelBooking();
			Date CheckInDate = (Date) session.getAttribute("checkInDate");
			Date CheckOutDate = (Date) session.getAttribute("checkOutDate");
			String hotelId = (String) session.getAttribute("hotelID");
			int hotelRoomNo = (int) session.getAttribute("hotelRoomNo");
			try {
				hotelBooking = hotelBlMMT.bookHotel(user.getUserId(), hotelId, hotelRoomNo, CheckInDate, CheckOutDate);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			if (hotelBooking != null) {
				session.setAttribute("hotelBooking", hotelBooking);
				RequestDispatcher dispatch = request.getRequestDispatcher("FinalHotelStep.jsp");
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
