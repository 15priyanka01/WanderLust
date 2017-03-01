package com.mmt.controller;

import java.io.IOException;
import java.util.Date;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

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
		double valueAfterPromotion = (double) session.getAttribute("finalValuetobepaid");
		User user = (User) session.getAttribute("user");
		boolean paymentStatus = false;
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
			SimpleDateFormat dateFormat1 = new SimpleDateFormat("yyyy-MM-dd");
			HotelBlMMT hotelBlMMT = new HotelBlMMT();
			HotelBooking hotelBooking = new HotelBooking();

			Date CheckInDate = null;
			CheckInDate = (Date) session.getAttribute("din");
			Date CheckOutDate = null;
			CheckOutDate = (Date) session.getAttribute("dout");
			String hotelId = (String) session.getAttribute("hID");
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