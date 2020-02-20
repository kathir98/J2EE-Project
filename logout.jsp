<!DOCTYPE html>
<html>
<head>
	<title>Loged Out</title>
</head>
<body><center>
    <%
        if(session!=null)
        {
        session.invalidate();
        }
        out.println("You are loged out!");
        response.sendRedirect("login.jsp");
    %>
</center></body>
</html>