<html>
<head>
	<title>Bill-amount</title>
	<link rel="stylesheet" type="text/css" href="regstyle.css">
</head>
<body>
    <%
    int freading=Integer.parseInt(request.getParameter("freading"));
    int ireading=Integer.parseInt(request.getParameter("ireading"));
    int cno=Integer.parseInt(request.getParameter("cno"));
    String name=request.getParameter("name");
    String address=request.getParameter("address");
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
        %>
	<div class="container">
	    <form>
            <div class="partition">
                <div class="left">  
                    <label>Connection No</label>
                </div>
                <div class="right"> 
                    <input type="text" name="cno" value="<%=cno%>">
                </div>
            </div>
            <div class="partition">
                <div class="left">  
                    <label>Connection Type</label>
                </div>
                <div class="right"> 
                    <input type="text" name="conntype" value="<%=conntype%>">
                </div>
            </div>
            <div class="partition">
                <div class="left">  
                    <label>Name</label>
                </div>
                <div class="right"> 
                    <input type="text" name="name" value="<%=name%>">
                </div>
            </div>
            <div class="partition">
                <div class="left">  
                    <label>Landmark</label>
                </div>
                <div class="right"> 
                    <input type="text" name="address" value="<%=address%>">
                </div>
            </div>
            <div class="partition">
                <div class="left">  
                    <label>Current Reading</label>
                </div>
                <div class="right"> 
                    <input type="text" name="amt" value="<%=freading%>">
                </div>
            </div>
            <div class="partition">
                <div class="left">  
                    <label>No of Units</label>
                </div>
                <div class="right"> 
                    <input type="text" name="units" value="<%=units%>">
                </div>
            </div>
            <div class="partition">
                <div class="left">  
                    <label>Amount</label>
                </div>
                <div class="right"> 
                    <input type="text" name="amt" value="<%=total%>">
                </div>
            </div>
            
        </form>	
    </div>
</body>
</html>


