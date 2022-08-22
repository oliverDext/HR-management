package com.hr.management;
import java.io.File;
import javax.servlet.*;
import javax.servlet.http.*;
import com.oreilly.servlet.multipart.MultipartParser;
import com.oreilly.servlet.multipart.Part;
import com.oreilly.servlet.multipart.FilePart;

public class UploadUserPhotoServlet extends HttpServlet
{

private String fileSavePath;
private static final String UPLOAD_DIRECTORY = "images/";

@Override
public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException 
{
	HttpSession session=request.getSession(false);  

	String n = (String)session.getAttribute("sessionuser");  

	fileSavePath = getServletContext().getRealPath("/") + File.separator + UPLOAD_DIRECTORY; /*save uploaded files to a 'Upload' directory in the web app*/

	if (!(new File(fileSavePath)).exists())
	{
		(new File(fileSavePath)).mkdir();// creates the directory if it does not exist        
	}

	String resp = "";
	int i = 1;
	resp += "<br>Here is information about uploaded files.<br>";
	try
	{
		MultipartParser parser = new MultipartParser(request, 1024 * 1024 * 1024);  /* file limit size of 1GB*/
		Part _part;
		while((_part = parser.readNextPart()) != null)
		{
		if (_part.isFile())
		{
        		FilePart fPart = (FilePart) _part;  // get some info about the file
        		String name = fPart.getFileName();//n+".jpg";
        		if (name != null)
			{
        		long fileSize = fPart.writeTo(new File(fileSavePath+"/"+n+".jpg"));
        		resp += i++ + ". " + fPart.getFilePath() + "[" + fileSize / 1024 + " KB]<br>";
			}
			else
			{
        		resp = "<br>The user did not upload a file for this part.";
        		}
        	}
        	}// end while 
        }
	catch(java.io.IOException ioe)
	{
            	resp = ioe.getMessage();
		System.out.println(ioe);
        }

        request.setAttribute("message", resp);
        getServletContext().getRequestDispatcher("/usersettings.jsp").forward(request, response);
    }
}
