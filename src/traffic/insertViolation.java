package traffic;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/insert")
public class insertViolation extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	HttpSession session=request.getSession();
		String violationname=(String)session.getAttribute("ty1");
		String violationtype=request.getParameter("violationtype");
		String drivinglicenseno=request.getParameter("drivinglicenseno");
		String vehiclenumber=(String)session.getAttribute("ty2");
		String location=request.getParameter("location");
		String checker=request.getParameter("checker");
		String dat=request.getParameter("dat");
		String tim=request.getParameter("tim");
		LoginDao d=new LoginDao();
		int status;
		if(violationname.length()>0 && violationtype.length()>0 && drivinglicenseno.length()>0 && vehiclenumber.length()>0 && location.length()>0 && checker.length()>0 && dat.length()>0 && tim.length()>0)
		{	
		status=d.insertViolation(violationname,violationtype,drivinglicenseno,vehiclenumber,location,dat,tim,checker);
		if(status>0)
		{
			response.sendRedirect("police2.jsp");
			session.setAttribute("res","none");
		}
		
	}
    else
    {
    	response.sendRedirect("police2.jsp");
    	session.setAttribute("res", "failed");
    }
  }

}
