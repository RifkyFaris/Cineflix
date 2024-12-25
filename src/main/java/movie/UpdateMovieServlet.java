package movie;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateMovieServlet")
public class UpdateMovieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
   
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id=request.getParameter("id");
		String name=request.getParameter("movieName");
		String content=request.getParameter("content");
		String category=request.getParameter("category");
		String revenueModel=request.getParameter("revenueModel");
		String contentProviderID=request.getParameter("contentProviderID");
		
		
		boolean isTrue;
		isTrue=MovieController.updatedata(id, name);
		if(isTrue==true) {
			List<Media> mdetails=MovieController.getById(id);
			request.setAttribute("mdetails",mdetails);
			String alertMessage="Data update successful";
			response.getWriter().println("<script>alert('"+alertMessage+"');window.location.href='GetAllDetails'</script>");
		}
		else {
			RequestDispatcher dis2=request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
		}
		
	}

}
