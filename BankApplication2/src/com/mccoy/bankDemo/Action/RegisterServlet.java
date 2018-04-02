package com.mccoy.bankDemo.Action;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

import com.mccoy.bankDemo.Service.DBconnectServlet;

import net.sf.log4jdbc.DriverSpy;
@WebServlet("/register")
public class RegisterServlet extends HttpServlet 
{

	
	static final Logger logger=Logger.getLogger(RegisterServlet.class);
	static final String Log_PROPERTIES_FILE="src/log4j.properties";
	
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		System.out.println("reg started");
		logger.info("register servlet started");
		DBconnectServlet db=new DBconnectServlet();
		
		//PropertyConfigurator.configure("src/log4j.properties");
   
		String name=req.getParameter("name");
		String id1=req.getParameter("id");
		int id=Integer.parseInt(id1);
		String email=req.getParameter("email");
		String dob=(req.getParameter("dob"));;

		SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
		Connection con=null;
		PreparedStatement stmt=null;
		java.util.Date date = null;

		try {
			date = sdf1.parse(dob);
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		java.sql.Date sqld = new java.sql.Date(date.getTime());  
		String age1=req.getParameter("age");
		int age=Integer.parseInt(age1);
		String pwd=req.getParameter("password");
		String cpwd=req.getParameter("cpassword");
		String qry="insert into p_details values(?,?,?,?,?,?,?)";
                   
		try {
			con=db.DBConnect();
			//System.out.println("typing.....");
			stmt=con.prepareStatement(qry);
			stmt.setString(1,name);
			stmt.setInt(2, id);
			stmt.setString(3, email);
			stmt.setDate(4,sqld);
			stmt.setInt(5, age); 
			stmt.setString(6, pwd);
			stmt.setString(7, cpwd);
			stmt.executeUpdate();
			System.out.println("values inserted");
			System.out.println("reg ened");
		//	logger.info("Account created successfully "+qry);
			/*out.println("<html><body bgcolor='pink'>"
				+ "<h1>Welcome " +name+" "+id+"</h1>"+"<a href='login.html'>Click Here for Login</a>" 
				+"</body></html>");*/

		} catch (SQLException e) 
		{
			logger.error(e);		
		}
		
		finally
		{

			if(stmt!=null)
			{
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(con!=null){
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

		}
		PrintWriter out=resp.getWriter();

		RequestDispatcher rd=req.getRequestDispatcher("/login.jsp"); 
		rd.include(req, resp);
		//out.println("Registration Successful");

	}}
