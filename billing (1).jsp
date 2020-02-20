<%@page language ="java" import="java.sql.*"%>
<html>
<head>
	<title>Bill-amount</title>
	<link rel="stylesheet" type="text/css" href="regstyle.css">
        <script src="validation.js"></script>
</head>
<body>
	 <div class="container">
	<%
    int freading=Integer.parseInt(request.getParameter("freading"));
    int ireading=Integer.parseInt(request.getParameter("ireading"));
    int cno=Integer.parseInt(request.getParameter("cno"));
    String name=request.getParameter("name");
    String address=request.getParameter("address");
    String conntype=request.getParameter("conntype");

    
                    int units=freading-ireading;
                    float total;
                    //if(conntype.equals("Domestic"))
                    //{
                        if(units<=100 && units>=0)
                        {
                            total=units*1.5f;
                        }
                        else
                        {
                            total=units*3;
                        }

                       
                    //}
                    /*else
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
   
           /*String conno=request.getParameter("custno");
            Class.forName("com.mysql.jdbc.Driver");
            Connection cs =DriverManager.getConnection("jdbc:mysql://localhost:3308/eb","root","root");
            Statement s =cs.createStatement();
            ResultSet rs=s.executeQuery("select * from user where cno ='"+conno+"'");
            if(rs.next())
            {*/
       
       
        %>
        <form>
            Con.No:<input type="text" name="cno" value="<%=cno%>"><br><br>
            Con.Type:<input type="text" name="conntype" value="<%=conntype%>"><br><br>
            Name:<input type="text" name="name" value="<%=name%>"><br><br>
            Landmark:<input type="text" name="address" value="<%=address%>"><br><br>
            cur.reading:<input type="text" name="amt" value="<%=freading%>"><br><br>
            No of units:<input type="text" name="units" value="<%=units%>"><br><br>
            Amount:<input type="text" name="amt" value="<%=total%>"><br><br>
            
        </form>	
            </div>
</body>
</html>


