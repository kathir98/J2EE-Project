<!DOCTYPE html>
<html>
<head>
	<title>Homepage</title>
        <link rel="stylesheet" type="text/css" href="homepage.css">
        <script>
            function newc()
		{
                    window.location = "http://localhost:8080/eb/newconnection.jsp";

		}
                function bill()
		{
                    window.location = "http://localhost:8080/eb/search.jsp";		
		}
        </script>

</head>
<body>
        <div class="session">
                <h1>
                <%
            String sess=(String)session.getAttribute("usernm");
            if(sess==null)
            {
                response.sendRedirect("login.jsp");
            }
            %>
            <%="welcome "+sess%>
            </h1>
            <a href ="logout.jsp" class="logout">logout</a> 	
        </div>
        <center>
            <form>
                <div class="page-divide">
                    <div class="page-left">
                        
                        <input type="button" value="New Connection" onclick="newc()"><br><br>
                    </div>
                    <div class ="page-right">
                        
                        <input type="button" value="New Connection" onclick="bill()"><br><br>
                    </div>
                </div>
	</center>  
        </div>
</body>
</html>

