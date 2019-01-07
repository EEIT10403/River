<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css" href="../css/main.css" />
<title>Login</title>
</head>
<body>
<h3>Login</h3>

<form action="<c:url value="/_11_secure/login.controller" />" method="get">
<table>
	<tr>
		<td>ID : </td>
		<td><input type="text" name="username" value="${param.username}"></td>
		<td><span class="errors">${errors.IDerror}</span></td>
	</tr>
	<tr>
		<td>Password : </td>
		<td><input type="text" name="password" value="${param['password']}"></td>
		<td><span class="errors">${errors.PWerror}</span></td>
	</tr>
	<tr>
		<td>
			<select name="myLocale">
				<option value="zh_TW">中文</option>
				<option value="en_US">英文</option>
				<option value="ja">日文</option>
			</select>
		</td>
		<td align="right"><input type="submit" value="login"></td>
	</tr>
</table>
</body>
</html>