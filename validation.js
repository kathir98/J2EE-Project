function validform()
{
	var y1=document.form2.name.value;
	var y2=document.form2.cno.value;
	var y3=document.form2.address.value;
	var y4=document.form2.no.value;
	var y5=document.form2.email.value;
	var y6=document.form2.reading.value;
	var y7=document.form2.connection.value;
	if(y1==null||y1==""||y2==null||y2==""||y3==null||y3==""||y4==null||y4==""||y6==null||y6==""||y7==null||y7=="")
	{
		alert("Enter all fields");
		return false;
	}
	var atpos=y5.indexOf("@");
        var dotpos=y5.indexOf(".");
	if(atpos<1||dotpos<atpos+2||dotpos+2>=y5.length)
	{
		alert("Enter valid email address");
		return false;
	}
	if(y4.length>10||y4.length<10)
	{
                alert("Enter the 10 digit mobile number");
		return false;
	}
	if(y4.length == 10){
		for(var i = 0; i<10; i++){
			if(y4.charCodeAt(i)<48 && y4.charCodeAt(i) > 57){
				alert("Enter only numbers");
				return false;
			}
		}
	}
	if(IsNaN(y4))
	{
		alert("Enter only the number as mobile number");
		return false;
	}
}
