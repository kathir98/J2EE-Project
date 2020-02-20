<!DOCTYPE html>
<html>
<head>
	<title>Admin Registration</title>
	<!--<link rel="stylesheet" type="text/css" href="regstyle.css">-->
        <link rel="stylesheet" type="text/css" href="adminreg.css">
</head>
<body>
    <div class="page-divide">
		<div class="page-left">
			<p>&nbsp;</p>
		</div>
		<div class="page-right">
			<!--<p>REALLY</p>-->
                        <div class="container">
                            <form action="dataupdate.jsp">
                                <center>
                                <input type="text" name="name" placeholder="Name"><br><br>
                                <input type="text" name="uname" placeholder="Username"><br><br>
                                <input type="password" name="pass" placeholder="Password"><br><br>
                                <!--Designation-->
                                <select name="Designation">
                                    <option value="administrator">Administrator </option>
                                    <option value="superviser">Superviser </option>
                                    <option value="operator">Operator </option>
                                    <option value="accounant">Accounant </option>
                                </select>
                                <br><br>
                                <input type="submit" name="SUBMIT" style="background-color: #4c5a9a; padding: 10px; color: white;"><br><br>
                                <h4>Registration Success Please <a href="login.jsp">Log In</a></h4>
                                </center>
                            </form>	
                                    </div>
            
	</div>
                        </div>
		</div>
	</div>
    
	
</body>
</html>

