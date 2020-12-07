package net.javaguides.login.database;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*; 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Transaction
 */
@WebServlet("/Transaction")
public class Transaction extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/plain"); 
		PrintWriter out = response.getWriter();
		String sAccountNo = request.getParameter("saccNumber");
		String rAccountNo = request.getParameter("raccNumber");
		 String amount = request.getParameter("amount");
		String balance = request.getParameter("balance");
		if(Integer.parseInt(balance) > Integer.parseInt(amount))
		{
			//response.sendRedirect("insuffBal.jsp");
		
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
			
			 
			 
			 con.setAutoCommit(false);		//turning on transactions
			 
			 Statement stmt = con.createStatement();
			
			 stmt.executeUpdate("UPDATE account SET balance = (balance -'" + amount + "') WHERE accNo = '" + sAccountNo + "'");
			 stmt.executeUpdate("UPDATE account SET balance = (balance +'" + amount + "') WHERE accNo = '" + rAccountNo + "'");
			stmt.execute("INSERT INTO transaction" + " VALUES (NULL, '" + sAccountNo + "', '" + rAccountNo + "', '" + amount + "' , '1', '1', current_timestamp())");
			con.commit();
			
			response.sendRedirect("tSuccess.jsp");
		
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			try {
				con.rollback();
			} catch (SQLException e1) {}
			out.println("Transaction Failed");
			e.printStackTrace();
		}
		finally {
		
				try {
					if(con != null)
					con.close();
				} catch (SQLException e) {}
		}
	
		}
		else {
			response.sendRedirect("insuffBal.jsp");
		}
	}

}
