package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GetLoc
 */
@WebServlet("/GetLoc")
public class GetLoc extends HttpServlet {
	private static final long serialVersionUID = 1L;


	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String name=request.getParameter("name");
		String mob=request.getParameter("phone");
		String type=request.getParameter("type");
		String latt=request.getParameter("latt");
		String longi=request.getParameter("longi");
		String age=request.getParameter("age");
		String blood=request.getParameter("blood");
		try {
		
		
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/hackathon","root","");
		
		//Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://node12654-getsaved.cloudjiffy.net/hackathon","root","THHrio35634");
		
		PreparedStatement st=con.prepareStatement("INSERT INTO hack(name,ph,type,latt,longi,age,blood) values(?,?,?,?,?,?,?)");
		
		
			st.setString(1,name);
			st.setString(2,mob);
			st.setString(3,type);
			st.setString(4,latt);
			st.setString(5,longi);
			st.setString(7,age);
			st.setString(8,blood);
			int i=st.executeUpdate();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
		
		
		
		
		System.out.println("Latti"+latt);
		System.out.println(longi);
		response.getWriter().append("Served at: ").append(request.getContextPath());
		//response.sendRedirect("https://www.latlong.net/c/?lat="+latt+"&long="+longi);
	//	https://www.google.co.in/maps/@22.5601086,88.4904909,21z

		response.sendRedirect("All.jsp");
	}


}
