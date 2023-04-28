import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/JSTLServletDemo2")
public class JSTLServletDemo2 extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Student s = new Student(1, "Riya");
		
		String name ="Sharan";
		
		//request.setAttribute("nama", name);
		List<Student> stu = Arrays.asList(new Student(1, "Ram"), new Student(2, "Sai"), new Student(3, "Sam"));
		
		request.setAttribute("Stud", stu);
		//RequestDispatcher rd = request.getRequestDispatcher("jstldisplay2.jsp");
		RequestDispatcher rd = request.getRequestDispatcher("jstldisplay2.jsp?name="+name);
		//response.sendRedirect("jstldisplay2.jsp?name="+name+"&ss="+stu);
		rd.forward(request, response);
		
	}

}
