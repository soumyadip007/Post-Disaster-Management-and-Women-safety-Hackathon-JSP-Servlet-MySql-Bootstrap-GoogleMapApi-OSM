package Log;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.org.apache.xpath.internal.operations.And;

/**
 * 
 * @author Soumyadip Chowdhury
 * @github soumyadip007
 *
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String user	=(String)request.getParameter("user");
		String pass	=(String)request.getParameter("pass");
	
		if(user.equals("admin") && pass.equals("admin"))	
		{
			//request.setAttribute("user",user);
			//RequestDispatcher rd=request.getRequestDispatcher("Welcome1.jsp");
				//rd.forward(request,response);
			HttpSession session=request.getSession();
			session.setAttribute("username",user);
				try {
					
					response.sendRedirect("Control.jsp");

				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} 
		}
		else{
			try {             

				response.sendRedirect("Login.jsp");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}
}