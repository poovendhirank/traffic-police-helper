package traffic;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/checkrepeatoffender")
public class checkrepeatoffender extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String viname=request.getParameter("viname");
		String veno=request.getParameter("veno");
		HttpSession session=request.getSession();
		LoginDao repeat=new LoginDao();
		String i; 
		session.setAttribute("ty1",viname);
		session.setAttribute("ty2",veno);
        if(repeat.checkrepeat(viname,veno)) {
		 i="1";
		 response.sendRedirect("police2.jsp");
		 session.setAttribute("res",i);
		 
		}
        else
        {
        	i="0";
        	response.sendRedirect("police2.jsp");
        	session.setAttribute("res",i);
        	
        }

   }
}	