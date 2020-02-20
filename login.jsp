<!DOCTYPE html>
<html>
<head>
	<title>Electricity Department Of Manana - LOGIN </title>
        <link rel="stylesheet" type="text/css" href="login.css">

</head>
<body>
	<div class="container">
            <form action="datacheck.jsp" method="POST">
			<center>
                            <h4>Electricity Department of Manana</h4>
				<input type="text" name="uname" placeholder="Username"><br><br>
				<input type="password" name="pass" placeholder="Password"><br><br>
				<input type="submit" value="Sign in">
                                <input type="button" value="Sign up" onclick="register()">
			</center>
		</form>
	</div>

	<style>
		.container
		{
		margin:20%;
		}
	</style>
        <script>
            function register()
            {
                 window.location = "http://localhost:8080/eb/adminreg.jsp";
            }
           
        </script>
</body>
</html>