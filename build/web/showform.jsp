<%-- 
    Document   : showform
    Created on : 28 Aug, 2023, 6:32:14 PM
    Author     : Grissna
--%>

<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<html>
    <head>
        <style>
            table {
                font-family: arial, sans-serif;
                border-collapse: collapse;
            }
            td, th {
                border: 1px solid #000000;
                text-align: center;
                padding: 8px;
            }
            /* Basic table styling */
            table {
                border-collapse: collapse;
                width: 100%;
                max-width: 600px;
                margin: 0 auto;
                font-family: Arial, sans-serif;
            }

            th, td {
                border: 3px solid #ddd;
                color: white;
                padding: 8px;
                text-align: left;
                border-color: #d0d0d0;
            }
            td{
                background-color: #333333;
            }

            th {
                background-color: #ff0000;
            }
            body {
                background-image: url("./img/F1 car 3.jpg");
                background-color: #cccccc;
                background-repeat: no-repeat;
                background-size: 130%;
            }

        </style>
        <title>Details</title>
    </head>
    <body>
        <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
                           url = "jdbc:mysql://localhost:3306/formula?zeroDateTimeBehavior=convertToNull"
                           user = "root" password = ""/>
        <sql:query dataSource = "${snapshot}" var = "result">
            SELECT * from one;
        </sql:query>
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>EMAIL</th>
                <th>PASSWORD</th>
                <th>CONFIRM PASSWORD</th>
                <th>GENDER</th>
                <th>GAME</th>
                <th>AGE</th>
            </tr>
            <c:forEach var = "row" items = "${result.rows}">
                <tr>
                    <td> <c:out value = "${row.id}"/></td>
                    <td> <c:out value = "${row.name}"/></td>
                    <td> <c:out value = "${row.email}"/></td>
                    <td> <c:out value = "${row.password}"/></td>
                    <td> <c:out value = "${row.cpass}"/></td>
                    <td> <c:out value = "${row.gender}"/></td>
                    <td> <c:out value = "${row.game}"/></td>
                    <td> <c:out value = "${row.age}"/></td>
                </tr>
            </c:forEach>
        </table>
        <div class="merge" style="display: flex; justify-content: center;">
            <a href="addform.jsp"> <input type="submit" value="Insert"/></a>
            <a href="updateform.jsp"> <input type="submit" value="Update"/></a>
            <a href="deleteform.jsp"> <input type="submit" value="Delete"/></a>
            <a href="triggerops.jsp"> <input type="submit" value="Triggers"/></a>
        </div>
    </body>
</html>
