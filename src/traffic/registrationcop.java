package traffic;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/registrationcop")
public class registrationcop extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String aid=request.getParameter("auserid");
		String apass=request.getParameter("apassword");
		HttpSession session=request.getSession();
	    session.setAttribute("auserid",aid);
		if(aid.equals("admin")&&apass.equals("admin"))
		{
			response.sendRedirect("registrationcop.jsp");
		}
		else
		{
			response.sendRedirect("index.jsp");	
		}
		
	}

}
