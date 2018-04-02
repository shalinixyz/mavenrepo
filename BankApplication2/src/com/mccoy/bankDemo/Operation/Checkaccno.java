package com.mccoy.bankDemo.Operation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.log4j.Logger;

import com.mccoy.bankDemo.Action.RegisterServlet;
import com.mccoy.bankDemo.Service.DBconnectServlet;

public class Checkaccno 
{
	static final Logger logger=Logger.getLogger(Checkaccno.class);
	static final String Log_PROPERTIES_FILE="src/log4j.properties";
	public boolean isValid(long accno)
	{
		logger.info("isValid method started");
		System.out.println("isvalid started");
		DBconnectServlet db=new DBconnectServlet();
		String qry="select * from acc_det where accno=?";
		
		Connection con=null;
		PreparedStatement stmt=null;
		ResultSet rs1=null;
		con = db.DBConnect();
		try {
			stmt=con.prepareStatement(qry);
			stmt.setLong(1, accno);
			rs1=stmt.executeQuery();
			if(rs1.next())
			{
				System.out.println("resultset"+rs1.getInt(1));
				return true;
			}
			
		}
			
		 catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;

}
	
	public boolean isValidID(int id)
	{
		logger.info("isValid method started");
		System.out.println("isvalidID started");
		DBconnectServlet db=new DBconnectServlet();
		String qry="select * from p_details where pid=?";
		
		Connection con=null;
		PreparedStatement stmt=null;
		ResultSet rs1=null;
		con = db.DBConnect();
		try {
			stmt=con.prepareStatement(qry);
			stmt.setLong(1, id);
			rs1=stmt.executeQuery();
			if(rs1.next())
			{
			//m	System.out.println("resultset"+rs1.getInt(1));
				return true;
			}
			
		}
			
		 catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;

}
	
	
}