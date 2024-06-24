<%-- 
    Document   : panel
    Created on : 31/05/2024, 4:35:53 p. m.
    Author     : Carlos Chamorro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                background-color: black;
                color: white;
                font-family: Arial, sans-serif;
            }
            .container {
                text-align: center;
                margin-top: 50px;
            }
            .greeting {
                font-size: 24px;
                margin-bottom: 20px;
            }
            .content {
                font-size: 18px;
            }
            h3 {
                color: #E88D67;
            }

        </style>
    </head>
    <body>
        <%
            String usuario = (String) session.getAttribute("usuario");
            if (usuario == null) { 
                response.sendRedirect("index.html");
                return;
            }
        %>

        <section class="container">
            <div class="greeting">
                <h1>Bienvenido, <%= usuario %>!</h1>
                <h3>Spring Boot - MVC</h3>
            
            </div>
        </section>

        
    </body>
</html>
