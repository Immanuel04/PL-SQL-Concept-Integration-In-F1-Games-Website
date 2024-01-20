<%-- 
    Document   : updateform
    Created on : 28 Aug, 2023, 6:32:31 PM
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
        <title>Details Updation</title>
    </head>
    <body>
        <div class="form">
            <form method="post" action="updaterace.jsp">
                <h3> Id: <input type="text" name="id" placeholder="ID"><br></h3>
                <h3> Name: <input type="text" name="uname" placeholder="Name"><br></h3>
                <h3> Email: <input type="text" name="uemail" placeholder="Email"><br></h3>
                <h3> Password: <input type="text" name="upassword" placeholder="Password"><br></h3>
                <h3> Confirm Password: <input type="text" name="ucpass" placeholder="Cpass"><br></h3>
                <h3> Gender: <input type="text" name="ugender" placeholder="Gender"><br></h3>
                <h3> Game: <input type="text" name="ugame" placeholder="Game"><br></h3>
                <h3> Age: <input type="text" name="uage" placeholder="Age"><br></h3>
                <input type="submit" value="UPDATE">
            </form>
        </div>
    </body>
</html>
