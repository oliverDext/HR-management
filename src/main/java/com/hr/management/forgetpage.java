package com.hr.management;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;  
import javax.mail.*;  
import javax.mail.internet.*;  
import javax.activation.*; 
import java.sql.*;
import java.text.*;

public class forgetpage extends HttpServlet
{
int status=0;

public void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
{
	String em = req.getParameter("email");
	String mob = req.getParameter("mobile");
	String msg = "";
	
	res.setContentType("text/html");
	PrintWriter out = res.getWriter();			

	int z=0;
	int status=0;
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con1 = DriverManager.getConnection(ConstantUtil.DATABASE_CONNECTION, ConstantUtil.DATABASE_USERNAME, ConstantUtil.DATABASE_PASSWORD);
		PreparedStatement ps1 = con1.prepareStatement("select * from user where email='"+em+"' and mobile='"+mob+"'");	
		ResultSet rs1 = ps1.executeQuery();
		if(rs1.next())
		{
			msg = "Login Name = " + rs1.getString("username") + "\n & Password = " + rs1.getString("password");	
			z=1;		
		}
		else
		{
			RequestDispatcher rd = req.getRequestDispatcher("forgetpage.html");
			rd.include(req,res);
			out.print("<h3>Sorry! Registered Email or Mobile not matched</h3>");
		}		
	}
	catch(Exception e)
	{
		System.out.print(e);
	}

	if(z==1)
	{	
		final String from = "hroperation123@gmail.com";
		final String pass = "hroperation123@";
		final String to = em;
		String subject = "Password Recover";
		String body = msg;
	
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");

		// Get the Session object.
		Session msession = Session.getInstance(props,
		new javax.mail.Authenticator() {
		protected PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication(from,pass);
		}
		});

		try
		{
		// Create a default MimeMessage object.
		Message message = new MimeMessage(msession);
	
		// Set From: header field of the header.
		message.setFrom(new InternetAddress(from));
	
		// Set To: header field of the header.
		message.setRecipients(Message.RecipientType.TO,
		InternetAddress.parse(to));
	
		// Set Subject: header field
		message.setSubject(subject);
	
		// Now set the actual message
		message.setText(body);

		Transport.send(message);
		status=1;
		msession=null;
		} 
		catch (MessagingException e)
		{
			throw new RuntimeException(e);
		}	
		if(status==1)
		{
		RequestDispatcher rd = req.getRequestDispatcher("forgetpage.html");
		rd.include(req,res);
		out.print("<h3>UserName & Password has been send to Registered Email</h3>");
		}
	}
}

}




