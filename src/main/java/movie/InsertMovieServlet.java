package movie;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
@WebServlet("/InsertMovieServlet")
public class InsertMovieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String extractFileName(String contentDisposition) {
        String[] items = contentDisposition.split(";");
        for (String item : items) {
            if (item.trim().startsWith("filename")) {
                return item.substring(item.indexOf("=") + 2, item.length() - 1);
            }
        }
        return null;
    }

	
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("movieName");
		Part file=request.getPart("content");
		String contentDisposition = file.getHeader("content-disposition");
        String imageFileName = extractFileName(contentDisposition);
        String uploadPath="C:/Users/WWAsanka/Desktop/front1/src/main/webapp/upload/"+imageFileName;
        System.out.println(uploadPath);
        try {
        	FileOutputStream fos=new FileOutputStream(uploadPath);
            InputStream is=file.getInputStream();
            byte[] data=new byte[is.available()];
            is.read(data);
            fos.write(data);
            fos.close();
            
        }catch(Exception e) {
        	e.printStackTrace();
        }
		
		String category=request.getParameter("category");
		String revenuemodel=request.getParameter("revenue");
		int contentproviderid=2000;
		boolean isTrue;
		System.out.println(name);
		isTrue=MovieController.insertdata(name, imageFileName, category, revenuemodel, contentproviderid);
				if(isTrue==true) {
					String alertMessage="Data insert successful";
					response.getWriter().println("<script>alert('"+alertMessage+"');window.location.href='GetAllDetails'</script>");
				}
				else {
					RequestDispatcher dis2=request.getRequestDispatcher("wrong.jsp");
					dis2.forward(request, response);
				}
		
	}

}
