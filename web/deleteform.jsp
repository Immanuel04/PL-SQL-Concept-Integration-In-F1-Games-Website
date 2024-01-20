<%-- 
    Document   : deleteform
    Created on : 28 Aug, 2023, 6:32:45 PM
    Author     : Grissna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            form{
                border-radius: 10px;
                padding: 25px;
            }
            h3{
                color: white;
                width: min-content;
            }
            body {
                background-image: url("./img/f1 logo.png");
                background-color: #cccccc;
                background-repeat: no-repeat;
                background-size: 100%;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Details Deletion</title>
    </head>
    <body>
        <div class="form">
            <form action="deleterace.jsp">
                <h3>Id: <input type="text" name="sid" placeholder="ID"><br></h3>
                <input type="submit" value="DELETE">
            </form>
        </div>
    </body>
</html>
