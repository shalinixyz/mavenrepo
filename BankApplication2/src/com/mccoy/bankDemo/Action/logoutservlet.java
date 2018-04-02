package com.mccoy.bankDemo.Action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/logoutservlet")
public class logoutservlet extends HttpServlet 
{
	RequestDispatcher rd=null;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		PrintWriter out=resp.getWriter();  
		HttpSession session=req.getSession();
		session.invalidate();
		req.getRequestDispatcher("login.html").include(req, resp); 
		//out.print("<html><body><h3>logged out<h3></body></html>");
		
	}

}
