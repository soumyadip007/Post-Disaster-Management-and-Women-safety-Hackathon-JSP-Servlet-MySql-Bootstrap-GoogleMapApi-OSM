<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Base64" import="java.io.UnsupportedEncodingException" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
    
<!DOCTYPE html>
<html>
<head>
	
	<title>Layers Control Tutorial - Leaflet</title>

	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link rel="shortcut icon" type="image/x-icon" href="docs/images/favicon.ico" />

    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.4.0/dist/leaflet.css" integrity="sha512-puBpdR0798OZvTTbP4A8Ix/l+A4dHDD0DGqYW6RQ+9jxkRFclaxxQb/SJAWZfWAkuyeQUytO7+7N4QKrDh+drA==" crossorigin=""/>
    <script src="https://unpkg.com/leaflet@1.4.0/dist/leaflet.js" integrity="sha512-QVftwZFqvtRNi0ZyCtsznlKSWOStnDORoefr1enyq5mVL4tmKB3S/EnC3rRJcxCPavG10IcrVGSmPh6Qw5lwrg==" crossorigin=""></script>


	<style>
		html, body {
			height: 100%;
			margin: 0;
		}
		#map {
			width: 600px;
			height: 400px;
		}
	</style>

	
</head>
<body>
<!-- <iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d14726.700113125364!2d88.4355419!3d22.6659019!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1550754067243" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
 -->
<table>
        <thead>
                    <tr>
                      <th>name</th>
                      <th>ph</th>
                      <th>type</th>
                      <th>latti</th>
                      <th>longi</th>
                      <th>Link</th>
                      
                      
                    </tr>
                  </thead>
                  </table>
   <sql:setDataSource
	        var="con"
	        driver="com.mysql.jdbc.Driver"
	        url="jdbc:mysql://localhost:3306/hackathon"
	        user="root" password=""
	    /> 
	     
	     <table style="width:100%">
	    <sql:query var="listUsers"   dataSource="${con}">
	        SELECT * FROM hack;
	    </sql:query>
    
    
                    <c:forEach var="user" items="${listUsers.rows}">
                    <br>
                    <tr>
                 
                      <td >${user.name}</td>
       			        <td>${user.ph}</td>
                      <td>${user.type}</td>
                      <td>${user.latt}</td>
                      <td>${user.longi}</td>
                      
                   <td><strong><a href="https://www.google.co.in/maps/@${user.latt},${user.longi},20z">${user.ID}</a></strong></td>
                  
                     <td><strong><a href=" https://www.google.com/maps/search/police+stations/@${user.latt},${user.longi},13z/data=!3m1!4b1">${user.ID}</a></strong></td>
                  
                    </tr>
                    
                    
           </c:forEach>
           </table>
</body>
</html>
