<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>Select Members Table Result : ${fn:length(Select)} row(s) selected</h3>
	
<c:if test="${not empty Select}">
<table>
	<thead>
		<tr>
			<th>Member_Id</th>
			<th>email</th>
			<th>Chinese_Name</th>
			<th>English_Name</th>
			<th>ID_number</th>
			<th>Telephone</th>
			<th>Country</th>
			<th>Birthday</th>
			<th>Sex</th>
			<th>Address</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="bean" items="${Select}">
			<c:url value="/_11_memberpages/member.jsp" var="path">
				<c:param name="member_Id" value="${bean.member_Id}" />
				<c:param name="email" value="${bean.email}" />
				<c:param name="chinese_Name" value="${bean.chinese_Name}"/>
				<c:param name="english_Name" value="${bean.english_Name}"/>
				<c:param name="ID_number" value="${bean.ID_number}"/>
				<c:param name="telephone" value="${bean.telephone}"/>
				<c:param name="country" value="${bean.country}"/>
				<c:param name="birthday" value="${bean.birthday}"/>
				<c:param name="sex" value="${bean.sex}"/>
				<c:param name="address" value="${bean.address}"/>
			</c:url>
			<tr>
				<td>${bean.member_Id}</td>
				<td>${bean.email}</td>
				<td><a href="${path}">${bean.chinese_Name}</a></td>
				<td><a href="${path}">${bean.english_Name}</a></td>
				<td>${bean.ID_number}</td>
				<td>${bean.telephone}</td>
				<td>${bean.country}</td>
				<td><fmt:formatDate value="${bean.birthday}" pattern="yyyy/MM/dd G" /></td>
				<td>${bean.sex}</td>
				<td>${bean.address}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</c:if>
<h3><a href="<c:url value="/_11_memberpages/member.jsp" />">Member Table</a></h3>
</body>
</html>