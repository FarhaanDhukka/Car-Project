<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
	.myclass
	{
		margin:0 auto;
	}
</style>
<title>Insert title here</title>
</head>
<body>

	<script>
			function myfunction(element)
			{
				var url="ValidateServlet?value="+element.value+"&id="+element.id;
				var xhttp=new XMLHttpRequest();
				
				xhttp.onreadystatechange=function ()
				{
							if(this.readyState==4 && this.status == 200)
								
								{
										document.getElementById ("msg"+element.id).innerHTML=this.responseText;
								}
					};				
								xhttp.open("GET",url);
								xhttp.send();
				
			}
			
		</script>
	<jsp:include page="header.jsp"></jsp:include>
	<div class ="container">
	<form class="col-lg-6 col-md-6 col-sm-12 col-xs-12 myclass "action="RegistrationServlet" method="post">
			
			
			<div class ="form-group">
				<label>  Enter Username </label>
				<input type="text " name="username"class="form-control"placeholder="Enter Username">
				<span id="msgusername" style="color:red"></span>
			</div>
			
			
			<div class ="form-group">
				<label>  Enter Email </label>
				<input type="text " name="email" class="form-control"placeholder="Enter Eamil">
				<span id="msgemail" style="color:red"></span>
			</div>
			
			
			<div class ="form-group">
				<label>  Enter Password </label>
				<input type="password " name="password" class="form-control"placeholder="Enter Password">
			</div>
			
			
			<div class ="form-group">
				<input type="Submit" value="Register"class="btn btn-primary btn-block"/>
				<input type="reset" value="Reset"class="btn btn-danger btn-block"/>
			</div>
		</form>
		</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>