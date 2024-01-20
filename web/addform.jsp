<%-- 
    Document   : addform
    Created on : 28 Aug, 2023, 5:56:13 PM
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
        <title>Add Details</title>
    </head>
    <body>
        <div class="form">
            <form method="post" action="addrace.jsp">
                <h3> Id: <input type="text" name="id" placeholder="ID"><br></h3>
                <h3> Name: <input type="text" name="name" placeholder="Name"><br></h3>
                <h3> Email: <input type="text" name="email" placeholder="Email"><br></h3>
                <h3> Password: <input type="text" name="password" placeholder="Password"><br></h3>
                <h3> Confirm Password: <input type="text" name="cpass" placeholder="Cpass"><br></h3>
                <h3> Gender: <input type="text" name="gender" placeholder="Gender"><br></h3>
                <h3> Game: <input type="text" name="game" placeholder="Game"><br></h3>
                <h3> Age: <input type="text" name="age" placeholder="Age"><br></h3>
                <input type="submit" value="Insert">
            </form>
        </div>
    </body>
</html>
