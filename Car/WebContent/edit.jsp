<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<sql:setDataSource driver="com.mysql.jdbc.Driver"
					 	 	 url="jdbc:mysql://localhost:3306/db"
					 	 	 user="root"
					 	 	 password="root"
					  		 var="con"/>
					  		 
<sql:query var="rs" dataSource="${con}">
		select * from car where carid=?
		<sql:param>${param.carid}</sql:param>
</sql:query>

<jsp:include page="header.jsp"></jsp:include>
			
			<div class ="container">
		
			<c:forEach items="${rs.rows}" var="row">
		
			<form action="UpdateCarServlet" class="col-lg-6 col-md-9 col-sm-12 col-xs-12 myclass" method="post">
			
			
			<div class ="form-group">
				<label>  Enter Carid </label>
				<input type="text" name="carid" value="${row.carid}" class="form-control"placeholder="Enter Carid">
			</div>
			
			
			<div class ="form-group">
				<label>  Enter CompanyName </label>
				<input type="text" name="companyname" value="${row.companyname}" class="form-control"placeholder="Enter Companyname">
			</div>
			
			
			<div class ="form-group">
				<label>  Enter CarName </label>
				<input type="text" name="carname" value="${row.carname}"  class="form-control" placeholder="Enter CarName">
			</div>
			
			<div class ="form-group">
				<label>  Enter Price </label>
				<input type="text" name="price" value="${row.price}"  class="form-control" placeholder="Enter Price">
			</div>
			
			<div class ="form-group">
				<label>  Enter Link </label>
				<input type="text" name="link" value="${row.link}"  class="form-control"  placeholder="Enter Link">
			</div>
			
			
			<div class ="form-group">
				<input type="Submit" value="Update Car" class="btn btn-primary btn-block"/>
				<input type="reset" value="Reset" class="btn btn-danger btn-block"/>
			</div>

		</form>
		</c:forEach>
		</div>  
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>