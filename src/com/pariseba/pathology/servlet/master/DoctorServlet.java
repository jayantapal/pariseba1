package com.pariseba.pathology.servlet.master;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pariseba.pathology.common.ParisebaConstants;
import com.pariseba.pathology.util.ConnectionUtil;

/**
 * Servlet implementation class DoctorServlet
 */
public class DoctorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection connection;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String requestFor=request.getParameter(ParisebaConstants.REQUEST_TYPE);
		if(requestFor.equalsIgnoreCase(ParisebaConstants.DOCTORS_ADD))
			addDoctors(request,response);
		
	}
	
	
	
	private String addDoctors(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		RequestDispatcher rd= request.getRequestDispatcher("/jsp/mastar/doctorForm.jsp");
		String doctorname=request.getParameter("doctorname");
		String gender=request.getParameter("gender");
		String dob=request.getParameter("dob");
		String contactno=request.getParameter("contactno");
		String email=request.getParameter("email");
		String address=request.getParameter("address");
		
		connection=ConnectionUtil.getConnection();
		Statement statement = null;
		String insertSQL="INSERT INTO DOCTOR VALUES(null,'"+doctorname+"','"+gender+"','"+dob+"','"+address+"','"+contactno+"','"+email+"','MBBS')";
		
		System.out.println(insertSQL);
		try{
			statement=connection.createStatement();
			
			int count=statement.executeUpdate(insertSQL);
			
			System.out.println("Insert count="+count);
	
			
		}catch(SQLException ex){ex.printStackTrace();}
		finally{
			try {
				statement.close();
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		request.setAttribute("msg", "Doctor info. added successfully....");
		rd.forward(request, response);
	return null;
	}
	

}
