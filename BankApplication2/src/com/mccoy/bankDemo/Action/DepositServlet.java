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

@WebServlet("/deposit")
public class DepositServlet extends HttpServlet
{
	static final Logger logger=Logger.getLogger(DepositServlet.class);
	static final String Log_PROPERTIES_FILE="src/log4j.properties";
	DBconnectServlet db=new DBconnectServlet();
	Checkaccno c=new Checkaccno();
	Connection con=null;
	PreparedStatement pst=null;
	PrintWriter out=null;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		System.out.println("deposit started");
		//PropertyConfigurator.configure("src/log4j.properties");
		long accno=Integer.parseInt(req.getParameter("accno"));
		int damount=Integer.parseInt(req.getParameter("amount"));
		HttpSession session=req.getSession();
		try {
			con=db.DBConnect();
			if(c.isValid(accno)==true)
			{
				con.setAutoCommit(false);
				pst=con.prepareStatement("update acc_det set balance=(balance+?) where accno=?");
				pst.setInt(1, damount);
				pst.setLong(2, accno);
				pst.executeUpdate();
				con.commit();
				System.out.println("Deposited successfully");
				logger.debug("Deposited successfully");
				out=resp.getWriter();
				req.getRequestDispatcher("index-2.jsp").include(req, resp);
				out.println("<html><body>"
						+ "<center><h3>Deposited successfully</center></h3>"+"" 
						+"</body></html>");
			}
			else
			{
				logger.debug("Account number doesnot exists");
				out=resp.getWriter();
				req.getRequestDispatcher("index-2.jsp").include(req, resp);
				out.println("<html><body>"
						+ "<center><h3>Unsuccess</center></h3>"+"" 
						+"</body></html>");
			}

		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
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
