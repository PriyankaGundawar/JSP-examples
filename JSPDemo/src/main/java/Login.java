

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.logindao.LoginDao;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		
		LoginDao log = new LoginDao();
		if(log.logDao(uname, pass)) {
		HttpSession session = request.getSession();
		session.setAttribute("username", uname);		
		
		//if((uname.equals("priyanka")) &&(pass.equals("priya123"))) {
			response.sendRedirect("Welcome.jsp");
		}
		else
			response.sendRedirect("login.jsp");
		
	}



}
