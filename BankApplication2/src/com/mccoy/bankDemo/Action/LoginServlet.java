package com.mccoy.bankDemo.Action;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

import com.mccoy.bankDemo.Service.DBconnectServlet;

@WebServlet("/login")
public class LoginServlet extends HttpServlet 
{
	static final Logger logger=Logger.getLogger(LoginServlet.class);
	static final String Log_PROPERTIES_FILE="src/log4j.properties";
	DBconnectServlet db = new DBconnectServlet();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		logger.info("Login servlet started");
		//PropertyConfigurator.configure("src/log4j.properties");
		String name = req.getParameter("nm");
		String password = req.getParameter("pd");
		Connection con = null;
		PreparedStatement stmt = null;
		RequestDispatcher rd = null;
		ResultSet rs = null;


		PrintWriter out = resp.getWriter();

		String qry = "select * from p_details where name=? and password=?";

		try {
			con = db.DBConnect();
			stmt = con.prepareStatement(qry);
			stmt.setString(1, name);
			stmt.setString(2, password);

			rs = stmt.executeQuery();

			System.out.println("values fetched");

			if (rs.next()) 
			{
				System.out.println("next() running.....");
				String name1=rs.getString(1);
				int pid = rs.getInt(2);
				String email = rs.getString(3);
				Date date=rs.getDate(4);
				int age=rs.getInt(5);
				String pwd=rs.getString(6);
				String cpwd=rs.getString(7);

				HttpSession session=req.getSession(true);
				session.setAttribute("name",name1);
				session.setAttribute("pid", pid);
                session.setAttribute("email", email);
                session.setAttribute("date", date);
                session.setAttribute("age", age);
                session.setAttribute("pwd", pwd);
                session.setAttribute("cpwd", cpwd);
                
				Date d=new Date(session.getCreationTime());
				System.out.println("session time "+d);
				session.setAttribute("d",d);
				session.setMaxInactiveInterval(30);
				Date d1=new Date(session.getLastAccessedTime());
				System.out.println("last access time"+d1);
				
				logger.info("Login Successful");

				rd = req.getRequestDispatcher("/index-2.jsp");
				rd.forward(req, resp);

			} else {
				rd = req.getRequestDispatcher("/login.jsp");
				rd.forward(req, resp);
			}

		} catch (SQLException e) {
			logger.info(e);
		}

		finally {

			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (stmt != null) {
				try {
					stmt.close();
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
