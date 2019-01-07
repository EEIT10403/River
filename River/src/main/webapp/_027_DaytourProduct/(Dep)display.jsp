<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<link rel="stylesheet" type="text/css" href="../css/table.css" />
<title>Display</title>
</head>
<%-- <c:set var="pageBean" value='${param.bean}' scope="session"/> --%>
<body>

	<h3>產品頁</h3>

	<table>
		<tr>
			<td>${param.Product_Id}</td>
		</tr>
		<tr>
			<td>${bean.prod_Name}</td>
		</tr>
		<tr>
			<td>${bean.ticket_type_1}</td>
			<td>${bean.unitPrice_1}</td>
			<td><a
				href="<c:url value="/DaytourProduct/DateAndTicket?Product_Id=${bean.product_Id}" />">買起來</a>
			</td>
		</tr>
		<tr>
			<td>${bean.ticket_type_2}</td>
			<td>${bean.unitPrice_2}</td>
			<td><a
				href="<c:url value="/DaytourProduct/DateAndTicket?Product_Id=${bean.product_Id}" />">買起來</a>
			</td>
		</tr>
		<tr>
			<td>${bean.ticket_type_3}</td>
			<td>${bean.unitPrice_3}</td>
			<td><a
				href="<c:url value="/DaytourProduct/DateAndTicket?Product_Id=${bean.product_Id}" />">買起來</a>
			</td>
		</tr>
		<tr>
			<td>${bean.ticket_type_4}</td>
			<td>${bean.unitPrice_4}</td>
			<td><a
				href="<c:url value="/DaytourProduct/DateAndTicket?Product_Id=${bean.product_Id}" />">買起來</a>
			</td>
		</tr>
		<tr>
<!-- 			<td>Main_Image :</td> -->
			<td><img style='width:500px'
				src='<%=request.getContextPath()%>/getProductMainImage?Product_Id=${bean.product_Id}'>
			</td>
			<%-- 	 height='100' width='80'  <td><span class="error">${errors.Main_Image}</span></td> --%>
		</tr>

		<tr>
		<td><input type="button" value="詳細資訊"	id="Details"  ></td>
		<td><input type="button" value="權益說明"	id="Rights" ></td>
			
		</tr>
		<tr>
		<td><div id="DetailShow">${bean.detail}</div></td>
		</tr>
		
<!-- 		<tr> -->
<!-- 			<td><span id="Rights">權益說明:</span></td> -->
<%-- 			<td>>${bean.rights}</td> --%>
<!-- 		</tr> -->
		<tr>
			<td><a
				href="<c:url value="/_027_DaytourProduct/TestDisplay.jsp" />">TestDisplay</a>
			</td>
		</tr>
	</table>

	<h3></h3>
</body>

<script>

$('#Details').click(function(){
	 $('#DetailShow').empty();
	 $('#DetailShow').html('${bean.detail}');
 
});
$('#Rights').click(function(){
	 $('#DetailShow').empty();
	 $('#DetailShow').html('${bean.rights}');
 
});
	
</script>
</html>