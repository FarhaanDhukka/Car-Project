<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	
	<sql:setDataSource driver="com.mysql.jdbc.Driver"
					   url="jdbc:mysql://localhost:3306/db"
					   user="root"
					   password="root"
					   var="con"/>
					 
	<sql:query var="rs" dataSource="${con}">
		select * from cartitems where username=?
		<sql:param>${user.username}</sql:param>
	</sql:query>
	
	
	<c:forEach items="${rs.rows}" var="cartdetails">
	<sql:query var="rs2" dataSource="${con}">
		select * from car where carid=?
		<sql:param>${cartdetails.carid}</sql:param>
	</sql:query>
			
	<div class="container">
		<div class="row">
			<c:forEach items="${rs2.rows}" var="row">
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<a href="cars.jsp?carid=${row.carid}"><img src="ImageServlet?carid=${row.carid}" class="col-lg-12"/></a>
				</div>
				<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
					<h3 class="col-lg-12">${row.companyname}</h3>
					<h5 class="col-lg-12">${row.carname}</h5>
					<h5 class="col-lg-12">Rs. ${row.price}</h5>
					<form action="UpdateCartServlet" method="post">
					 	
						<input type="text" name="carid" value="${row.carid}" hidden/>
					
						<input type="submit" class="btn btn-primary btn-block" value="Update Cart"></br>
					</form>
					
					<c:if test="${user.role=='admin'}">
						<a href="DeleteCartServlet?carid=${row.carid}" class="btn btn-danger btn-block">Delete</a></br>
						<a href="edit.jsp?carid=${row.carid}" class="btn btn-warning btn-block">Edit</a>
					</c:if>
				</div>
			</c:forEach>
		</div>
	</div>	
	</c:forEach>    
	
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>