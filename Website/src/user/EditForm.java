package user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import database.*;


@WebServlet("/EditForm")
public class EditForm extends HttpServlet{

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 102831973239L;
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException {
		
		HttpSession session = request.getSession();
		String currForm =(String) request.getParameter("currForm");
		String user = (String) session.getAttribute("username");
		
		System.out.println(currForm);
		
		if(currForm.equals("address")) {
			
			String sqlStmt = "UPDATE db.User SET address = '"+ request.getParameter("address")+"' WHERE username = '"+user+"';";
			doSQL(sqlStmt);
			response.sendRedirect("profile.jsp");
			
		}
		else if(currForm.equals("phone")) {
			
			String sqlStmt = "UPDATE db.User SET phone = '"+ request.getParameter("phone")+"' WHERE username = '"+user+"';";
			doSQL(sqlStmt);
			response.sendRedirect("profile.jsp");
			
		}
		
		else if(currForm.equals("email")) {
			
			String sqlStmt = "UPDATE db.User SET email = '"+ request.getParameter("email")+"' WHERE username = '"+user+"';";
			doSQL(sqlStmt);
			response.sendRedirect("profile.jsp");
			
		}
		
	}
	
	public void doSQL(String stmt) {
		
		try {
			DatabaseOperation op = new DatabaseOperation();
			op.connect();
			op.executeQuery(stmt);
			
		} catch(Exception e) { e.printStackTrace(); }	
		
	}
	
}