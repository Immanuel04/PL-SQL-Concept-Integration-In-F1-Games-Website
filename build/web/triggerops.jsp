<%-- 
    Document   : triggerops
    Created on : 28 Aug, 2023, 8:43:29 PM
    Author     : Grissna
--%>

<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<html>
    <head>
        <title>Triggers on DB</title>
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
        </head>
            <body>
            <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
                               url = "jdbc:mysql://localhost:3306/formula"
                               user = "root" password = ""/>
            <sql:query dataSource = "${snapshot}" var = "result">
                SELECT * from trilog;
            </sql:query>
            <table>
            <tr>
            <th>Trigger ID</th>
            <th>Data ID</th>
            <th>Action</th>
            <th>Date</th>
            </tr>
            <c:forEach var = "row" items = "${result.rows}">
                <tr>
                <td> <c:out value = "${row.id}"/></td>
                <td> <c:out value = "${row.uid}"/></td>
                <td> <c:out value = "${row.action}"/></td>
                <td> <c:out value = "${row.cdate}"/></td>
                </tr>
            </c:forEach>
            </table>
    </body>
</html>