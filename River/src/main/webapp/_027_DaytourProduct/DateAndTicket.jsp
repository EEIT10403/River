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

	<h3>選擇日期與票種</h3>

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
			<td><select id="Type1_Qty" name="Type1_Qty">
					<option value="0">0</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
			</select></td>
			<td><span id='subTotal1'>0</span></td>
		</tr>
		<c:if test="${not empty bean.ticket_type_2}">
		<tr>
			<td>${bean.ticket_type_2}</td>
			<td>${bean.unitPrice_2}</td>
				<td><select id="Type2_Qty" name="Type2_Qty">
					<option value="0">0</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
			</select></td>
			<td><span id='subTotal2'>0</span></td>
		</tr>
		</c:if>
		<c:if test="${not empty bean.ticket_type_3}">
		<tr>
			<td>${bean.ticket_type_3}</td>
			<td>${bean.unitPrice_3}</td>
				<td><select id="Type3_Qty" name="Type3_Qty">
					<option value="0">0</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
			</select></td>
			<td><span id='subTotal3'>0</span></td>
		</tr>
		</c:if>
		<c:if test="${not empty bean.ticket_type_4}">
		<tr>
			<td>${bean.ticket_type_4}</td>
			<td>${bean.unitPrice_4}</td>
				<td><select id="Type4_Qty" name="Type4_Qty">
					<option value="0">0</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
			</select></td>
			<td><span id='subTotal4'>0</span></td>
		</tr>
		</c:if>

	</table>

	<h3></h3>
</body>

<script>
	$('#Type1_Qty').change(function() {
		$('#subTotal1').empty();
		var unitPrice_1 = ${bean.unitPrice_1};
		var Type1_Qty = $('#Type1_Qty').val();
		var subTotal1 = unitPrice_1*Type1_Qty;
		$('#subTotal1').html(subTotal1);

	});
	$('#Type2_Qty').change(function() {
		$('#subTotal2').empty();
		var unitPrice_2 = ${bean.unitPrice_2};
		var Type2_Qty = $('#Type2_Qty').val();
		var subTotal2 = unitPrice_2*Type2_Qty;
		$('#subTotal2').html(subTotal2);

	});
	$('#Type3_Qty').change(function() {
		$('#subTotal3').empty();
		var unitPrice_3 = ${bean.unitPrice_3};
		var Type3_Qty = $('#Type3_Qty').val();
		var subTotal3 = unitPrice_3*Type3_Qty;
		$('#subTotal3').html(subTotal3);

	});
	$('#Type4_Qty').change(function() {
		$('#subTotal4').empty();
		var unitPrice_4 = ${bean.unitPrice_4};
		var Type4_Qty = $('#Type4_Qty').val();
		var subTotal4 = unitPrice_4*Type4_Qty;
		$('#subTotal4').html(subTotal4);

	});
</script>
</html>