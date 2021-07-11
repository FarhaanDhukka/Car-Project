package servlet;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateCarServlet")
public class UpdateCarServlet extends HttpServlet
{

	//i changed this get method to post now
	//let me try now whether it is working
	//remember, whenever we fill form we use post method
	//and whenever we use link we use get method
	
			@Override
			protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
			{
			
		
				int carid=Integer.parseInt(req.getParameter("carid"));
				String companyname= req.getParameter("companyname");
				String carname= req.getParameter("carname");
				String link= req.getParameter("link");
				String price=(req.getParameter("price"));
			
				try
				{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","root");
				PreparedStatement ps=con.prepareStatement("update car set companyname=?,carname=?,price=?,link=? where carid=?");
				ps.setString(1, companyname);
				ps.setString(2, carname);
				ps.setString(3, price);
				ps.setString(4, link);
				ps.setInt(5, carid);
				ps.executeUpdate();
				resp.sendRedirect("car.jsp");
			}
			catch(Exception e)
			{
				PrintWriter out=resp.getWriter();
				out.println(e);
			}

		}
	
	
	}

 
