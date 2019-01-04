<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<title>TestDisplay</title>
</head>
<body>
		<script>
	
	$(document).ready(function() {	
		loadProduct();
		
		function loadProduct(){
			$.get('DisplayAll',function(getdata){
				console.log("我回來"+getdata);
				var selected = <%= request.getParameter("select") %>
				alert(selected);
			});
		};
		
	});
	</script>
	嗨
	<c:set var="select" value='${param.select}' scope="request"/>
<!-- 一個產品 -->
    
    <c:forEach var="bean" items="${select}">
    <table>
	<tr>
	<td><img src='<%=request.getContextPath()%>/getProductMainImage?Product_Id=${bean.product_Id}'>
	</td>
		<td>${bean.prod_Name}</td>
		<td><a href="<c:url value='/DaytourProduct/Display?Product_Id=${bean.product_Id}' />">${bean.prod_Name}</a></td>
		<td>${bean.ticket_type_1}</td>
		<td>${bean.unitPrice_1}</td>
	</tr>
	</table>	
	</c:forEach>
</body>
</html>