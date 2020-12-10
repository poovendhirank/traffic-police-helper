package traffic;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Insertaccident")
public class Insertaccident extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String loc=request.getParameter("location");
		String nop=request.getParameter("noofpeo");
		String toa=request.getParameter("toa");
		String dat=request.getParameter("date");
		String tim=request.getParameter("time");
		LoginDao d=new LoginDao();
		int status;
		int status1;
		PrintWriter out=response.getWriter();
		if(loc.length()>0 && nop.length()>0 && toa.length()>0 && dat.length()>0 && tim.length()>0)
		{	
		status=d.insertAccident(loc,nop,toa,dat,tim);
		status1=d.insertAccident1(loc,nop,toa,dat,tim);
		if(status1>0 && status>0)
		{
		   response.sendRedirect("police2.jsp");	
		}
		else
		{
			out.println("INSERTION FAILED.TRY AGAIN");
		}
		}
		else
		{
			response.sendRedirect("police2.jsp");
		}
	}

}
