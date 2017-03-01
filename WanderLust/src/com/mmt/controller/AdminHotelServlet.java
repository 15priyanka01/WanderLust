package com.mmt.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.mmt.model.bean.Hotel;
import com.mmt.model.bl.AdminBlMMT;
import com.mmt.model.bl.HotelBlMMT;


public class AdminHotelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String option = request.getParameter("option");
		Hotel newHotel=(Hotel)session.getAttribute("newHotel");
		String hotelId=(String) session.getAttribute("hotelId");
		String oldHotelId=(String) session.getAttribute("oldhotelId");
		String searchHotelId=(String) session.getAttribute("searchHotelId");
		Hotel hotelSearched=null;
		ArrayList<Hotel> arrayListHotel=null;
		AdminBlMMT adminHotel=new AdminBlMMT();
		HotelBlMMT hotelBl=new HotelBlMMT();
		int row=0;
		String msg=null;
		if(option.equals("insert"))
			{
			Hotel hotel=new Hotel();
			hotel.setHotelId(request.getParameter("hotelId"));
			hotel.setHotelLocation(request.getParameter("hotelLocation"));
			hotel.setHotelName(request.getParameter("hotelName"));
			hotel.getHotelInfo();
			;
			try {
				row=adminHotel.insertHotel(hotel);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(row>0){
				msg="Hotel Successfully Added";
				session.setAttribute("msg",msg);
			}
			else{
				
				msg="flight Successfully Added";
				session.setAttribute("msg",msg);
			}
		}
		else if(option.equals("delete"))
		{
			try {
				row=adminHotel.deleteHotel(hotelId);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(row>0){
				msg="hotel Successfully Deleted";
				session.setAttribute("msg",msg);
			}
			else{
				
				msg="flight Successfully Deleted";
				session.setAttribute("msg",msg);
			}
		}
		else if(option.equals("update"))
		{
			try {
				row=adminHotel.modifyHotel(oldHotelId, newHotel);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(row>0){
				msg="hotel Successfully Updated";
				session.setAttribute("msg",msg);
			}
			else{
				
				msg="flight Successfully Updated";
				session.setAttribute("msg",msg);
			}
		}
		else if(option.equals("search"))
		{
			try {
				hotelSearched=hotelBl.searchHotel(searchHotelId);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(hotelSearched==null){
				msg="Hotel doesn't Exist with ID = "+searchHotelId;
				session.setAttribute("msg",msg);
			}
			else{	
				session.setAttribute("hotelSearched",hotelSearched);
			}
		}
		else if(option.equals("display"))
		{
			try {
				arrayListHotel=hotelBl.displayHotel();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(arrayListHotel.isEmpty()){
				msg="No hotels Exist ";
				session.setAttribute("msg",msg);
			}
			else{
				session.setAttribute("arrayListHotel",arrayListHotel);
			}
		}
		
	}
		

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
