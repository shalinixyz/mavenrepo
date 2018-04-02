package com.mccoy.bankDemo.Action;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

import com.mccoy.bankDemo.Operation.Checkaccno;
import com.mccoy.bankDemo.Service.DBconnectServlet;
@WebServlet("/withdraw")
public class WithdrwaServlet extends HttpServlet
{
	
	static final Logger logger=Logger.getLogger(WithdrwaServlet.class);
	static final String Log_PROPERTIES_FILE="src/log4j.properties";
	DBconnectServlet db=new DBconnectServlet();
	Connection con=null;
	Connection con1=null;
	PreparedStatement pst=null;
	Checkaccno c=new Checkaccno();
	long min_balance=500;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		//PropertyConfigurator.configure("src/log4j.properties");
		logger.info("withdrawservlet started");
		int accno=Integer.parseInt(req.getParameter("accno"));
		int wamount=Integer.parseInt(req.getParameter("amount"));
		
		
		String qry="select balance from acc_det where accno=?";
	
		
		try {
			if(c.isValid(accno)==true)
			{
			con=db.DBConnect();
			con.setAutoCommit(false);
			pst=con.prepareStatement("update acc_det set balance=(balance-?) where accno=?");
		    pst.setInt(1, wamount);
			pst.setInt(2, accno);
			pst.executeUpdate();
			con.commit();
			System.out.println("updated successfully");
			logger.debug("Successful Withdraw");
			PrintWriter out=resp.getWriter();
			req.getRequestDispatcher("index-2.jsp").include(req, resp);
			out.println("<html><body bgcolor='pink'>"
					+ "<center><h3>successful withdraw</center></h3>"+"" 
					+"</body></html>");
			}
			else
			{
				logger.error("Account number does not exists");
				System.out.println("Unsuccessful withdraw");
				logger.debug("Unsuccessful Withdraw");
				PrintWriter out=resp.getWriter();
				req.getRequestDispatcher("index-2.jsp").include(req, resp);
				out.println("<html><body bgcolor='pink'>"
						+ "<center><h3>Account Number does not exists</center></h3>"+"" 
						+"</body></html>");	
			}
		} catch (SQLException e) {
			logger.info(e);
		}
		finally {

			
			if (pst != null) {
				try {
					pst.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

		}
	
	}
}
