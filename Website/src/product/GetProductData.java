package product;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import database.*;


@WebServlet("/getPosts")


public class GetProductData extends HttpServlet {
	
	private static final long serialVersionUID = 102831963239L;
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException {
	
		HttpSession session = request.getSession();
		
		String sqlstmt = "SELECT * FROM db.PRODUCTS";
		
		ResultSet rs = doSQL(sqlstmt);
		
		try {
			while(rs.next()) {
				
				System.out.println(rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4)+" "+rs.getString(5)+" "+rs.getString(6)+" "+rs.getString(7));
				
			}
			
		}catch(Exception e) {e.printStackTrace();}
		
		
	}
	
	public ResultSet doSQL(String stmt) {
		ResultSet rs = null;
		try {
			DatabaseOperation op = new DatabaseOperation();
			op.connect();
			rs=op.getData(stmt);
			
		} catch(Exception e) { e.printStackTrace(); }	
	
		return  rs;
	}
	
	
}
