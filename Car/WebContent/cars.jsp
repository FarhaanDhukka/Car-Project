<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
 <title>eCommerce Product Detail</title>
 <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
 <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<!-- Display only particular car -->
	<!-- Take carid from last page car.jsp using ${param.carid} -->
	
	<sql:setDataSource driver="com.mysql.jdbc.Driver"
								url="jdbc:mysql://localhost:3306/db"
								user="root"
								password="root"
								var="con"/>
	
	<jsp:include page="header.jsp"></jsp:include>
	
	<sql:query var="rs" dataSource="${con}">
		select * from car where carid=?
		<sql:param>${param.carid}</sql:param>
	</sql:query>
	
	
	<div class="container">
		<div class="card">
		<c:forEach items="${rs.rows}" var="row">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">
						
						<div class="preview-pic tab-content">
						  <div class="car.jsp?carid=${row.carid}"><img src="ImageServlet?carid=${row.carid}"  style="height:400px" style="width:300px" class="col-lg-12" /></div>
						 </div>
					</div>
					<div class="details col-md-6">
						
						<h3 class="product-title">${row.companyname}</h3>
						<h4 class="product-title">${row.carname}</h4>
						<h6 class="product-title">${row.link}</h6>
						
						<div class="rating">
							<div class="stars">
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star"></span>
								<span class="fa fa-star"></span>
							</div>
							</br>
						</div>
						<p class="product-description"></p>
						<h4 class="price">Current Price: <span>Rs. ${row.price}</span></h4>
						
						
						
						<form action="AddToCartServlet" method="post">
						<input type="text" name="carid" value="${row.carid}" hidden/>
					
						<input type="submit" class=" btn btn-primary  btn-block" value="Add To Cart">	</br>
						<input type="submit" class="btn btn-success btn-block" value="Buy">
						</br>
					  </form>
					
					<c:if test="${user.role=='admin'}">
						<a href="DeleteServlet?carid=${row.carid}" class="btn btn-danger btn-block">Delete</a>
						</br>
						<a href="edit.jsp?carid=${row.carid}" class="btn btn-warning btn-block">Edit</a>
					</c:if>
					
					</div>
				</div>
			</div>
			</c:forEach>
		</div>
	</div>
	
	
	
	 <!--  
	<div class="container">
		<div class="row">
			<c:forEach items="${rs.rows}" var="row">
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<a href="car.jsp?carid=${row.carid}"><img src="ImageServlet?carid=${row.carid}" style="height:250px" style="width:450px" class="col-lg-12"/></a>
				</div>
				
				
				<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
					<h3 class="col-lg-12">${row.companyname}</h3>
					<h4 class="col-lg-12">${row.carname}</h4>
					<h5 class="col-lg-12">Rs. ${row.price}</h5>
					
					<form action="AddToCartServlet" method="post">
						<input type="text" name="carid" value="${row.carid}" hidden/>
						Quantity: <input type="number" name="qty"/>
						<input type="submit" class="btn btn-success btn-block" value="Add To Cart">
					</form>
					
					<c:if test="${user.role=='admin'}">
						<a href="DeleteServlet?carid=${row.carid}" class="btn btn-danger btn-block">Delete</a>
						<a href="edit.jsp?carid=${row.carid}" class="btn btn-warning btn-block">Edit</a>
					</c:if>
				</div>
			</c:forEach>
		</div>
	</div>	    
	 -->
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>