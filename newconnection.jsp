<!DOCTYPE html>
<html>
<head>
	<title>New connection</title>
	
        <link rel="stylesheet" type="text/css" href="newconnection.css">

        <script src="validation.js"></script>
</head>
<body>
    <div class="page-divide">
      
    </div>
    
	<div class="container">
            <h3>New Consumer</h3><br>
            <center>
		<form name="form2" action ="newupdate.jsp" onsubmit="return validform()">
			<input type="text" name="name" placeholder="Name">
			<input type="text" name="cno" placeholder="Connection Number">
                        <textarea rows="4" cols="39" name="address" placeholder="Your address here"></textarea>
                        <input type="text" name="no" placeholder="Mobile Number">
                        <input type="text" name="email" placeholder="Email Address">
                        <input type="text" name="reading" placeholder="Initial Reading">
			<select name="connection">
				<option value="Domestic">Domestic</option>
				<option value="Commercial">Commercial</option>			
                        </select><br><br>
			<input type="submit" value="SUBMIT"  style="background-color: #4c5a9a; padding: 10px; color: white;">
		</form>	
                </center>
	</div>
</body>
</html>

