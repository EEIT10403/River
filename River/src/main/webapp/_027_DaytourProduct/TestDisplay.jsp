<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TestDisplay</title>
</head>
<body>
	<form name="insert" action="<c:url value="/DaytourProduct/Display" />"
		method="Post">
		Product_Id : <input type="text" name="Product_Id" value=""> <input
			type="submit" name="" value="select">
	</form>
</body>
</html>