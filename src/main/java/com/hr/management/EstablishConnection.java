package com.hr.management;
import java.sql.*; 

public class EstablishConnection
{
	public static Connection getConnection()
	{
		Connection con = null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(ConstantUtil.DATABASE_CONNECTION, ConstantUtil.DATABASE_USERNAME, ConstantUtil.DATABASE_PASSWORD);
		}
		catch(Exception e)
		{
			System.out.println("sorry! connection not established");
		}
		return con;
	}
}