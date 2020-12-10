package traffic;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class plogin
 */
@WebServlet("/plogin")
public class plogin extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String puid=request.getParameter("puserid");
		String ppass=request.getParameter("ppassword");
		int len=puid.length();
		LoginDao d=new LoginDao();
		HttpSession session=request.getSession();
		session.setAttribute("puid",puid);
		if(d.check(puid,ppass,len)) {
			response.sendRedirect("police2.jsp");
			session.setAttribute("res","start");
			
		}
		else
		{
			response.sendRedirect("policeLogin.jsp");
		}
	}

}
