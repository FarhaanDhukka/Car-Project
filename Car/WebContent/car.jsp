<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="cars.css" />
</head>
<body>
<sql:setDataSource driver="com.mysql.jdbc.Driver"
							url="jdbc:mysql://localhost:3306/db"
							user="root"
							password="root"
							var="con"/>
							
<sql:query var="rs" dataSource="${con}">
			select * from car where status='A'
	</sql:query>
	
	<c:if test="${param.sort!=null}">
	<c:if test="${param.sort=='hightolow'}">	
	<sql:query var="rs" dataSource="${con}">
		select * from car where status='A' order by price desc
	</sql:query>
	</c:if>
	
	<c:if test="${param.sort=='lowtohigh'}">
	<sql:query var="rs" dataSource="${con}">
		select * from car where status='A' order by price ASC
	</sql:query>
	</c:if>
	</c:if>
	
	<c:if test="${param.companyname!=null && param.sort==null}">	
	<sql:query var="rs" dataSource="${con}">
		select * from car where status='A' and companyname like '%' ? '%' 
		<sql:param>${param.companyname}</sql:param>
	</sql:query>
	</c:if>
				
	<c:if test="${param.companyname==null && param.sort==null}">					   
	<sql:query var="rs" dataSource="${con}">
		select * from car where status='A'
	</sql:query>
	</c:if>
							
	<jsp:include page="header.jsp"></jsp:include>
	
								
	<sql:query var="rs" dataSource="${con}">
			select * from car where status='A'
	</sql:query>
	
	<c:if test="${param.sort!=null}">
	<c:if test="${param.sort=='hightolow'}">	
	<sql:query var="rs" dataSource="${con}">
		select * from car where status='A' order by price desc
	</sql:query>
	</c:if>
	
	<c:if test="${param.sort=='lowtohigh'}">
	<sql:query var="rs" dataSource="${con}">
		select * from car where status='A' order by price ASC
	</sql:query>
	</c:if>
	</c:if>
	
	<c:if test="${param.companyname!=null && param.sort==null}">	
	<sql:query var="rs" dataSource="${con}">
		select * from car where status='A' and companyname like '%' ? '%' 
		<sql:param>${param.companyname}</sql:param>
	</sql:query>
	</c:if>
				
	<c:if test="${param.companyname==null && param.sort==null}">					   
	<sql:query var="rs" dataSource="${con}">
		select * from car where status='A'
	</sql:query>
	</c:if>
	  	
	 <div class="container">
    <h3 class="h3">shopping Demo-1 </h3>
    <div class="row">
    <c:forEach items="${rs.rows}" var="row">
        <div class="col-md-3 col-sm-6">
        <a href="cars.jsp?carid=${row.carid}">
            <div class="product-grid">
                <div class="product-image">
                    <a href="cars.jsp?carid=${row.carid}">
                        <img  src="ImageServlet?carid=${row.carid}" style="height:300px">
                    </a>
                    
                </div>
                <ul class="rating">
                    <li class="fa fa-star"></li>
                    <li class="fa fa-star"></li>
                    <li class="fa fa-star "></li>
                    <li class="fa fa-star disable"></li>
                    <li class="fa fa-star disable"></li>
                </ul>
                <div class="product-content">
                    <h3 class="title"><a href="#"></a>${row.companyname}</h3>
                     <h3 class="col-lg-12">${row.carname}</h3>
                    <h4 class="col-lg-12">Rs.${row.price} </h4>
                    </div>
                    <a class="add-to-cart" href="">+ Add To Cart</a>
                </div>
            </div>
            </c:forEach>
        </div>
        
        
	  <jsp:include page="footer.jsp"></jsp:include>
	  
	 <!--   
	<div class="container">
    <div class="row">
        <c:forEach items="${rs.rows}" var="row">
        <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                    <a href="cars.jsp?carid=${row.carid}">
                        <img src="ImageServlet?carid=${row.carid}" style="height:300px" class="col-lg-12">
                    </a>
                    <h3 class="col-lg-12">${row.companyname}</h3>
                    <h3 class="col-lg-12">${row.carname}</h3>
                    <h4 class="col-lg-12">Rs.${row.price} </h4>
                    <a href="" class="btn btn-primary btn-block"> Add To Cart</a>
                    <a href ="" class="btn btn-danger btn-block">Buy </a>
                </div>
           </c:forEach>
            </div>
        </div>
         -->
	

</body>
</html>