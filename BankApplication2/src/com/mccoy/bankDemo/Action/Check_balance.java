package com.mccoy.bankDemo.Action;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

import com.mccoy.bankDemo.Service.DBconnectServlet;
@WebServlet("/check")
public class Check_balance extends HttpServlet{
	
	static final Logger logger=Logger.getLogger(Check_balance.class);
	static final String Log_PROPERTIES_FILE="src/log4j.properties";
	DBconnectServlet db = new DBconnectServlet();
	
	Connection con = null;
	PreparedStatement stmt = null;
	//RequestDispatcher rd = null;
	ResultSet rs = null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		
		//PropertyConfigurator.configure("src/log4j.properties");
		logger.info(" Check_balance started");
		int balance=0;
		int accno=Integer.parseInt(req.getParameter("accno"));
		String qry="select balance from acc_det where accno=?";
		
		con=db.DBConnect();
		try {
			stmt=con.prepareStatement(qry);
			
			stmt.setInt(1,accno);
			rs=stmt.executeQuery();
			
			if(rs.next())
			{
				balance=rs.getInt(1);
				System.out.println("balance="+balance);
				logger.debug("Check_balance successful");
				
				PrintWriter out=resp.getWriter();
				req.getRequestDispatcher("index-2.jsp").include(req, resp);
				out.println("<html><body bgcolor='pink'>"
						+ "<h3><center>Your balance is " +balance+" </center></h3>"+"" 
						+"</body></html>");
				
				
			}
			else
			{
				
              logger.error("Account Number does not exists");
				
				PrintWriter out=resp.getWriter();
				req.getRequestDispatcher("index-2.jsp").include(req, resp);
				out.println("<html><body bgcolor='pink'>"
						+ "<h3><center>Account Number does not exists </center></h3>"+"" 
						+"</body></html>");
				
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			logger.error(e);
		}
		
		
		
	}

}
