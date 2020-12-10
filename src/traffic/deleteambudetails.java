package traffic;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deleteambudetails")
public class deleteambudetails extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String location=request.getParameter("location");
		String toa=request.getParameter("toa");
		String date=request.getParameter("dat");
		String time=request.getParameter("tim");
		LoginDao d=new LoginDao();
	    int status=d.deletesendambulencedetail(location,toa,date,time);
	    if(status>0)
	    {
	    	response.sendRedirect("medical1.jsp");
	    }
	    else
	    {
	    	response.sendRedirect("medical1.jsp");
	    }
	}
}
