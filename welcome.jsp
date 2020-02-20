
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
        <link rel="stylesheet" type="text/css" href="welcome.css">
    </head>
    <body>
    
            <div class="head">
                <center>
            <%
            String sess=(String)session.getAttribute("usernm");
            if(sess==null)
            {
                response.sendRedirect("login.jsp");
            }
            %>
            <%="welcome "+sess%>
                </center>
                </div>
            <div class="logout" align="right">
                <a href="login.jsp" class="logout">Logout</a>
            </div>
        
        <form method="post">
            <div class="container1">
                <center>
            <input type="button" value="New Connection" onclick="newc()">
            <input type="button" value="Billing" onclick="bill()">
                </center>
            </div>
            
        </form>
        
        
        <script>
            function newc()
            {
                window.location.href="newconnection.jsp";
            }
            function bill()
            {
                   window.location.href="search.jsp";
            }
        </script>
                
        
    </body>
</html>
