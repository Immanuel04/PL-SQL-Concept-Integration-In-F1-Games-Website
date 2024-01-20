<%-- 
    Document   : curops
    Created on : 3 Sep, 2023, 3:55:04 PM
    Author     : Grissna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cursor On DB</title>
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
                            url = "jdbc:mysql://localhost:3306/formula?zeroDateTimeBehavior=convertToNull"
                            user = "root" password = ""/>
        <sql:query dataSource = "${snapshot}" var = "result">
            CALL `cur1`();
        </sql:query>
        <table>
            <tr>
                <th>Name</th>
                <th>Age</th>
            </tr>
            <c:forEach var = "row" items = "${result.rows}">
                <tr>
                    <td> <c:out value = "${row.pname}"/></td>
                    <td> <c:out value = "${row.page}"/></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
