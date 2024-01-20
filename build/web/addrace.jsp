<%-- 
    Document   : addrace
    Created on : 28 Aug, 2023, 6:10:24 PM
    Author     : Grissna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>Add Details</title>
 </head>
 <body> 
 <% 
     try{
         String url = "jdbc:mysql://localhost:3306/formula?zeroDateTimeBehavior=convertToNull";
         String user = "root";
         String pass = "";
         Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection(url, user, pass);
         PreparedStatement add_rac = con.prepareStatement("insert into one values(?,?,?,?,?,?,?,?)");
         
         add_rac.setInt(1,Integer.parseInt(request.getParameter("id")));
         add_rac.setString(2,request.getParameter("name"));
         add_rac.setString(3,request.getParameter("email"));
         add_rac.setString(4,request.getParameter("password"));
         add_rac.setString(5,request.getParameter("cpass"));
         add_rac.setString(6,request.getParameter("gender"));
         add_rac.setString(7,request.getParameter("game"));
         add_rac.setInt(8,Integer.parseInt(request.getParameter("age")));
         add_rac.execute();
         
         out.print("<script>");
         out.print("alert('New Registration Added')");
         out.print("locations='addform.jsp");
         out.print("</script>");
         out.print("Success");
         response.sendRedirect("showform.jsp");
     }
     catch(Exception e) {
         out.println(e.getMessage());
     }
 %>
 </body>
</html>
