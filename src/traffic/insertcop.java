package traffic;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/insertcop")
public class insertcop extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pnid=request.getParameter("user");
		String pnpass=request.getParameter("pass");
		LoginDao d=new LoginDao();
		if(pnid.length()>0&&pnpass.length()>0) {
		if(d.check1(pnid))
		{  request.setAttribute("alertMsg", "YOU ENTERED ALREADY EXISTING USER");
			RequestDispatcher rd=request.getRequestDispatcher("registrationcop.jsp");  
			rd.include(request, response);
		}	
		else
		{
			d.insertcop(pnid, pnpass);
			request.setAttribute("alertMsg","SUCCESSFULLY REGISTERED");
			RequestDispatcher rd=request.getRequestDispatcher("registrationcop.jsp");  
			rd.include(request, response);
		}
		}
		else {
			//response.sendRedirect("registrationcop.jsp");
			request.setAttribute("alertMsg", "FAILED TO PROCESS");
			RequestDispatcher rd=request.getRequestDispatcher("registrationcop.jsp");  
			rd.include(request, response);
		}
		
	}

}
