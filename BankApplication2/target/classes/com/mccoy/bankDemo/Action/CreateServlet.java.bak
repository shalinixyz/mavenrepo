package com.mccoy.bankDemo.Action;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
@WebServlet("/create")
public class CreateServlet extends HttpServlet
{
	static final Logger logger=Logger.getLogger(CreateServlet.class);
	static final String Log_PROPERTIES_FILE="src/log4j.properties";
DBconnectServlet db=new DBconnectServlet();
Connection con=null;
Connection conn=null;
PreparedStatement stmt=null;
PreparedStatement pst=null;
ResultSet rs1=null;
long my_accno;

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		
		logger.info("create servlet started");
		System.out.println("create servlet started");
	//	PropertyConfigurator.configure("src/log4j.properties");
		String id1=req.getParameter("id");
		int id=Integer.parseInt(id1);
		String amount=req.getParameter("amount");
		int amount1=Integer.parseInt(amount);
		
		Checkaccno c=new Checkaccno();
		String seq="select acc_seq.nextval from dual";
		try {
			
			conn=db.DBConnect();
			
			pst = conn.prepareStatement(seq);
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		synchronized( this ) {
		   try {
			rs1 = pst.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		   try {
			if(rs1.next())
			   {
			     my_accno = rs1.getLong(1);
			   }
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		}
		
         
		try {
			
			con=db.DBConnect();
			if(c.isValidID(id))
			{
			stmt=con.prepareStatement("insert into acc_det values(?,?,?)");
		    stmt.setLong(1,my_accno);
			stmt.setInt(2,amount1);
			stmt.setInt(3,id);
			stmt.executeUpdate();
			HttpSession session=req.getSession();
			session.setAttribute("acc", my_accno);
			System.out.println("values inserted");
			logger.debug("Account created");
			
			PrintWriter out=resp.getWriter();
			req.getRequestDispatcher("index-2.jsp").include(req, resp); 
			out.println("<html><body bgcolor='pink'>"
				+ "<h3><center>Account created successfully Your Account Number is " +my_accno+" </center></h3>"+"" 
					+"</body></html>");
			
			out.flush();
			out.close();
			logger.info("Account created successfully");
			}
			else
			{
				PrintWriter out=resp.getWriter();
				req.getRequestDispatcher("index-2.jsp").include(req, resp); 
				out.println("<html><body bgcolor='pink'>"
					+ "<h3><center>Invalid ID..!!Could not create Account </center></h3>"+"" 
						+"</body></html>");
				out.flush();
				out.close();
				logger.info("Account not created");
			}
			
		} catch (SQLException e) 
		{
			e.printStackTrace();
		}
		finally
		{
			
				if(con!=null)
				{
					try {
						con.close();
					} catch (SQLException e) {
						logger.info(e);
					}
				}
				if(stmt!=null)
				{
					try {
						stmt.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
				}
	}
	}
	
