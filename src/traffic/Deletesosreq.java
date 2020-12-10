package traffic;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deletesosreq")
public class Deletesosreq extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String village=request.getParameter("village");
		String city=request.getParameter("city");
		int pincode=Integer.parseInt(request.getParameter("pincode"));
		LoginDao d=new LoginDao();
	    int status=d.deletesosreq(village, city, pincode);
	    if(status>0)
	    {
	    	response.sendRedirect("trafficCentral1.jsp");
	    }
	    else
	    {
	    	response.sendRedirect("trafficCentral1.jsp");
	    }
	}

}
