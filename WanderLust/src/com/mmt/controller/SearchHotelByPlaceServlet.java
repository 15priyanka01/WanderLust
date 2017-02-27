package com.mmt.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mmt.model.bean.Hotel;
import com.mmt.model.bl.HotelBlMMT;

public class SearchHotelByPlaceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		
		String place=request.getParameter("place");
		String from=request.getParameter("from");
		String to=request.getParameter("to");
		String room=request.getParameter("room");
		HotelBlMMT hotelBl=new HotelBlMMT();
		ArrayList<Hotel> arrayListHotel=null;
		try {
			arrayListHotel=hotelBl.searchHotel1(place);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(arrayListHotel.isEmpty()){
			String message="No Hotels found in "+place;
			session.setAttribute("message", message);
			response.sendRedirect("NoHotelInPlace.jsp");
		}
		else{
			session.setAttribute("arrayListHotel", arrayListHotel);
			RequestDispatcher dispatch=request.getRequestDispatcher("DisplayAllHotelPlace.jsp");
			dispatch.forward(request, response);
			
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
