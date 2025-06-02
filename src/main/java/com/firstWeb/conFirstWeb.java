package com.firstWeb;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/con")
public class conFirstWeb extends HttpServlet
{
  
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String myfullname = request.getParameter("fullname");
		String myusername = request.getParameter("username");
		String myemail = request.getParameter("email");
		String mypassword = request.getParameter("password");
		String myconfirmpassword = request.getParameter("confirmpassword");
		String mygender = request.getParameter("gender");
		String mydob = request.getParameter("dob");
		String mymobile = request.getParameter("mobile");
		String myAddress = request.getParameter("address");
		String myid = request.getParameter("id");
		
		PrintWriter out = response.getWriter();
		out.println("Name : "+myfullname);
		out.println("Username : "+myusername);
		out.println("Email : "+myemail);
		out.println("Password : "+mypassword);
		out.println("Gender : "+mygender);
		out.println("Date of birth : "+mydob);
		out.println("Mobile num : "+mymobile);
		out.println("Address : "+myAddress);
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
		    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "system", "tiger");
		    
		    PreparedStatement stm = con.prepareStatement(
		        "insert into login(FULL_NAME, USERNAME, EMAIL, PASSWORD, GENDER, DATE_OF_BIRTH, MOBILE, ADDRESS,ID) VALUES(?,?,?,?,?,?,?,?,?)"
		    );

		    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");  // <-- Correct format
		    java.util.Date parsedDate = sdf.parse(mydob);
		    java.sql.Date sqlDate = new java.sql.Date(parsedDate.getTime());
		    
		    stm.setString(1, myfullname);
		    stm.setString(2, myusername);
		    stm.setString(3, myemail);
		    stm.setString(4, mypassword);
		    stm.setString(5, mygender);
		    stm.setDate(6, sqlDate);
		    stm.setString(7, mymobile);
		    stm.setString(8, myAddress);
		    stm.setString(9, myid);
		    
		    
		    int result = stm.executeUpdate();
		    if (result > 0) {
		        out.println("Insert successful.");
		    } else {
		        out.println("Insert failed.");
		    }

			
		} catch (Exception e) {
			
			e.printStackTrace(out);
			
		}
	}
	
}
