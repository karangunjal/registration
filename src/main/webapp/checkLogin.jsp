<%@page import="java.sql.*"%>
<%
   try {
       Class.forName("oracle.jdbc.driver.OracleDriver");
       Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "system", "tiger");

       String username = request.getParameter("user");
       String mypass = request.getParameter("password");

       PreparedStatement ps = con.prepareStatement("SELECT * FROM login WHERE USERNAME=? AND password=?");
       ps.setString(1, username);
       ps.setString(2, mypass);

       ResultSet rs = ps.executeQuery();
       if (rs.next()) {
           session.setAttribute("fullname", rs.getString("Full_name"));
           response.sendRedirect("successfull.jsp");
       } else {
           response.sendRedirect("fail.jsp");
       }

   } catch (Exception e) {
       e.printStackTrace();
       response.sendRedirect("fail.jsp");
   }
%>
