package servlet;

import java.io.IOException;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ImageServlet")
public class ImageServlet extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		int  carid=Integer.parseInt(req.getParameter("carid"));
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","root");
		    PreparedStatement ps=con.prepareStatement("select image from car where carid=?");
		    ps.setInt(1, carid);
		    ResultSet rs=ps.executeQuery();
		    
		    
		    if (rs.next())
		    	
		    {
		    	Blob blob=rs.getBlob("image");
		    	byte[ ] arr=blob.getBytes(1, (int)blob.length());
		    	con.close();
		    	resp.getOutputStream().write(arr);
		    }
		}
		
		catch (Exception e) 
		{
			System.out.println(e);
		}
		
	}
}

