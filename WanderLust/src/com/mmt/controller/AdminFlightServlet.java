package com.mmt.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mmt.model.bean.Flight;
import com.mmt.model.bl.AdminBlMMT;
import com.mmt.model.bl.FlightBookingBlMMT;


public class AdminFlightServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String option = request.getParameter("option");
		//Flight flight=(Flight)session.getAttribute("flight");
		Flight newFlight=(Flight)session.getAttribute("newFlight");
		String flightId=(String) session.getAttribute("flightId");
		String oldFlightId=(String) session.getAttribute("oldFlightId");
		String searchFlightId=(String) session.getAttribute("searchFlightId");
		Flight flightSearched=null;
		ArrayList<Flight> arrayListFlight=null;
		AdminBlMMT adminFlight=new AdminBlMMT();
		FlightBookingBlMMT flightBl=new FlightBookingBlMMT();
		int row=0;
		String msg=null;
		if(option.equals("insert"))
		{
			Flight flight=new Flight();
			flight.setFlightId(request.getParameter("flightId"));
			flight.setFlightCompanyName(request.getParameter("flightCompanyName"));
			flight.setFlightSource(request.getParameter("flightSource"));
			flight.setFlightDestination(request.getParameter("flightDestination"));
			flight.setFlightDepartureTime(request.getParameter("flightDepartureTime"));
			flight.setFlightArrivalTime(request.getParameter("flightArrivalTime"));
			flight.setFlightTicketPrice(Double.parseDouble(request.getParameter("flightTicketPrice")));
			flight.setAvailableSeats(Integer.parseInt(request.getParameter("availableSeats")));
			try {
				row=adminFlight.insertFlight(flight);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(row>0){
				msg="Flight Successfully Added";
				session.setAttribute("msg",msg);
				
			}
			else{
				
				msg="Hotel Successfully Added";
				session.setAttribute("msg",msg);
			}
		}
		else if(option.equals("delete"))
		{
			try {
				row=adminFlight.deleteFlight(flightId);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(row>0){
				msg="Flight Successfully Deleted";
				session.setAttribute("msg",msg);
			}
			else{
				
				msg="Hotel Successfully Deleted";
				session.setAttribute("msg",msg);
			}
		}
		else if(option.equals("update"))
		{
			try {
				row=adminFlight.modifyFlight(oldFlightId, newFlight);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(row>0){
				msg="Flight Successfully Updated";
				session.setAttribute("msg",msg);
			}
			else{
				
				msg="Hotel Successfully Updated";
				session.setAttribute("msg",msg);
			}
		}
		else if(option.equals("search"))
		{
			try {
				flightSearched=flightBl.searchFlight(searchFlightId);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(flightSearched==null){
				msg="Flight doesn't Exist with ID = "+searchFlightId;
				session.setAttribute("msg",msg);
			}
			else{	
				session.setAttribute("flightSearched",flightSearched);
			}
		}
		else if(option.equals("display"))
		{
			try {
				arrayListFlight=flightBl.displayFlight();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(arrayListFlight.isEmpty()){
				msg="No Flights Exist ";
				session.setAttribute("msg",msg);
			}
			else{
				session.setAttribute("arrayListFlight",arrayListFlight);
			}
		}
		
	}
//modifyFlight(String flightId, Flight newflight)
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
