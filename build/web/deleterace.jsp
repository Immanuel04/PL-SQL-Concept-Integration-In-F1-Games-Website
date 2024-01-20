<%-- 
    Document   : deleterace
    Created on : 28 Aug, 2023, 6:54:56 PM
    Author     : Grissna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Details</title>
    </head>
    <body>
        <%
            try {
                String url = "jdbc:mysql://localhost:3306/formula";
                String user = "root";
                String pass = "";
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url, user, pass);
                PreparedStatement delete_prtcs = con.prepareStatement("DELETE FROM one WHERE id = ?");

                delete_prtcs.setInt(1, Integer.parseInt(request.getParameter("sid")));
                int rowsAffected = delete_prtcs.executeUpdate();

                if (rowsAffected > 0) {
                    System.out.println("Deletion successfull.");
                } else {
                    System.out.println("No DATA found with the given ID ");
                }
                out.print("<script>");
                out.print("alert('Data Deleted Successfully')");
                out.print("locations='deleteform.jsp");
                out.print("</script>");
                out.print("Success");
                response.sendRedirect("showform.jsp");

            } catch (Exception e) {
                out.println(e.getMessage());
            }
        %>
    </body>
</html>
