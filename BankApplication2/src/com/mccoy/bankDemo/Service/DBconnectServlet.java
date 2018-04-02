package com.mccoy.bankDemo.Service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

import javax.servlet.http.HttpServlet;

import org.apache.log4j.Logger;

import net.sf.log4jdbc.ConnectionSpy;
import net.sf.log4jdbc.DriverSpy;

public class DBconnectServlet extends HttpServlet 
{
	Connection con=null;
	public Connection DBConnect() 
	{
		Connection con = null;
		try {
			System.out.println("connection started....");
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1523:xe", "system", "admin");
			System.out.println("connected successsfully..");
		} 
		catch (ClassNotFoundException | SQLException e) 
		{
			e.printStackTrace();
		}
		return con;

}
}




