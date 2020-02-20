<%@page language ="java" import="java.sql.*"%>
<html>
<head>
	<title>Bill-amount</title>
	<link rel="stylesheet" type="text/css" href="regstyle.css">
        <script src="validation.js"></script>
</head>
<body>
	<script language="javascript">
		function print()
		{
			alert("Bill Printed");
		}
                
	</script>
<%
    int freading=Integer.parseInt(request.getParameter("freading"));
    int ireading=Integer.parseInt(request.getParameter("ireading"));
    String conntype=request.getParameter("conntype");

    
                    int units=freading-ireading;
                    float total;
                    if(conntype.equals("Domestic"))
                    {
                        if(units<=100 && units>=0)
                        {
                            total=units*1.5f;
                        }
                        else
                        {
                            total=units*3;
                        }
                       
                    }
                    else
                    {
                        if(units<=100 && units>=0)
                        {
                            total=units*3;
                        }
                        else
                        {
                            total=units*6;
                        }
                    }
    try
        {
            String conno=request.getParameter("custno");
            Class.forName("com.mysql.jdbc.Driver");
            Connection cs =DriverManager.getConnection("jdbc:mysql://localhost:3308/eb","root","root");
            Statement s =cs.createStatement();
            ResultSet rs=s.executeQuery("select * from user where cno ='"+conno+"'");
            if(rs.next())
            {
%>
            <div class="container">
            <form name="form2" onsubmit="print()">			
            Con.No:<input type="text" name="cno" value="<%=rs.getString("cno")%>"><br><br>
            Con.Type:<input type="text" name="conntype" value="<%=rs.getString("cntype")%>"><br><br>
            Name:<input type="text" name="name" value="<%=rs.getString("name")%>"><br><br>
            Landmark:<input type="text" name="address" value="<%=rs.getString("addr")%>"><br><br>
            Int.reading:<input type="text" name="ireading" value="<%=rs.getString("intr")%>"><br><br>
            Cur.reading:<input type="text" name="freading"><br><br>         
            No of units:<input type="text" name="units" value=units><br><br>
            Amount:<input type="text" name="amt" value=total><br><br>
            <input type="button" value="Bill" onclick="add()" style="background-color: #4c5a9a; padding: 5px; color: white;"><br><br>
            <input type="submit" value="Print">
            </form>	
            </div>
<%
            }
        }
    catch(Exception e)
        {
            out.println(e);
        }
%>
</body>
</html>


