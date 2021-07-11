<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<style>
	.myclass
	{
		margin:0 auto;
	}
</style>
</head>
<body>
	<div class ="container">
	
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container-fluid bg-grey">
  <h2 class="text-center">CONTACT</h2>
  <div class="row">
    <div class="col-sm-5">
      <H3>Contact us and we'll get back to you within 24 hours.</H3>
      <h5><b>
      <p><span class="glyphicon glyphicon-map-marker"></span> Mumbai, INDIA</p>
      <p><span class="glyphicon glyphicon-phone"></span> +91 7977769896</p>
      <p><span class="glyphicon glyphicon-envelope"></span> farhaandhukkagmail.com</p></h5></b>
    </div>
    <div class="col-sm-7">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
      <div class="row">
       
        <div class ="form-group">
				<input type="Submit" value="Send"class="btn btn-primary btn-block"/>
			</div>
      </div>
    </div>
  </div>
</div>
	
	<!--  <h2>CONTACT</h2>
	<h3>Contact us and we'll get back to you within 24 hours.</h3>
	
	<b>
	 India, <br>

 	+91 7977769896<br>
 	farhaandhukka.com<br>
	Name:<br>
	Email:<br>
	Comment:<br>
	</b>
	<div class="col-sm-12 form-group">
          <button type="button" class="btn btn-primary btn-block" type="submit">Send</button>
        </div>
	</div>
	-->
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>