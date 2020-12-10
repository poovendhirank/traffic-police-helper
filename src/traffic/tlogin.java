package traffic;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class tlogin
 */
@WebServlet("/tlogin")
public class tlogin extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tuid=request.getParameter("tuserid");
		String tpass=request.getParameter("tpassword");
		int len=tuid.length();
		LoginDao d=new LoginDao();
		HttpSession session=request.getSession();
		session.setAttribute("tuid",tuid);
		if(d.check(tuid,tpass,len)) {
			response.sendRedirect("trafficCentral1.jsp");
			
		}
		else
		{
			response.sendRedirect("trafficCentralLogin.jsp");
		}
	}

}
