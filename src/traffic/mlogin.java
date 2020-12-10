package traffic;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class mlogin
 */
@WebServlet("/mlogin")
public class mlogin extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String muid=request.getParameter("muserid");
		String mpass=request.getParameter("mpassword");
		LoginDao d=new LoginDao();
		HttpSession session=request.getSession();
		session.setAttribute("muid",muid);
		int len=5;
		if(d.check(muid,mpass,len)) {
			response.sendRedirect("medical1.jsp");
			
		}
		else
		{
			response.sendRedirect("medicalLogin.jsp");
		}
		
	}

}
