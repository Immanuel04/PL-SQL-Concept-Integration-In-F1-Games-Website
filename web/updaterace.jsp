<%-- 
    Document   : updaterace
    Created on : 28 Aug, 2023, 7:14:07 PM
    Author     : Grissna
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.CallableStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                PreparedStatement upd_rac = con.prepareStatement("UPDATE one SET name = ?, email = ? ,password = ? , cpass = ? , gender = ? , game = ?, age = ? WHERE id = ?");

                upd_rac.setString(1, request.getParameter("uname"));
                upd_rac.setString(2, request.getParameter("uemail"));
                upd_rac.setString(3, request.getParameter("upassword"));
                upd_rac.setString(4, request.getParameter("ucpass"));
                upd_rac.setString(5, request.getParameter("ugender"));
                upd_rac.setString(6, request.getParameter("ugame"));
                upd_rac.setInt(7, Integer.parseInt(request.getParameter("uage")));
                upd_rac.setInt(8, Integer.parseInt(request.getParameter("id")));
                upd_rac.executeUpdate();
                out.print("<script>");
                out.print("alert('Updation Successful')");
                out.print("location=updateform.jsp");
                out.print("success");
                response.sendRedirect("showform.jsp");
                out.print("</script>");
            } catch (SQLException e) {
                e.printStackTrace();
            }
        %>
    </body>
</html>
