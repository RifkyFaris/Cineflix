package movie;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DisplayMovie")
public class DisplayMovie extends HttpServlet {
	
	private static final long serialVersionUID = 1L;	
	private static String url="jdbc:mysql://localhost:3306/movie";
	private static String user="root";
	private static String pass="2002";
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String videoId=request.getParameter("id");
		int id=Integer.parseInt(videoId);
		Connection connection=null;
		int vidId=0;
		String vidFileName=null;
		
        try {
			Class.forName("com.mysql.jdbc.Driver");
			connection=DriverManager.getConnection(url,user,pass);
			String query="select * from movie where id='"+id+"'";
			Statement stmt;
			stmt=connection.createStatement();
			
			ResultSet rs=stmt.executeQuery(query);
			while(rs.next()) {
				if(rs.getInt("id")==id) {
					vidId=rs.getInt("id");
					vidFileName=rs.getString("content");
				}
			}
			
		}catch(Exception e) {
			System.out.println(e);
		}
        RequestDispatcher rd;
        request.setAttribute("id", String.valueOf(vidId));
        request.setAttribute("img",vidFileName);
        
        rd=request.getRequestDispatcher("displayMovie.jsp");
        rd.forward(request,response);
        
	}

}
