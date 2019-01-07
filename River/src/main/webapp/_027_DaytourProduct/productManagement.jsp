<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css" href="../css/main.css" />

<title>Product</title>

<!-- include libraries(jQuery, bootstrap) -->
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>

<!-- include summernote css/js -->
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$('#summernote').summernote();
		$('#summernote2').summernote();
		$('#summernote3').summernote();
		
	});
	
	var contextPath = "${pageContext.request.contextPath}";
	$(document).ready(function() {
		$('input[name="Product_Id"]').blur(function() {
			$.ajax({
				method : "GET",
				url : contextPath + "/pages/products.view",
				data : "Product_Id=" + $('input[name="Product_Id"]').val(),
				dataType : "json",
				cache : false,
				async : true,
				success : function(json) {
					$(".error").first().append(json[0].text);
					if (json[0].hasMoreData) {
						$("input[name='Product_Id']").val(json[1].Product_Id);
						$("input[name='Prod_Name']").val(json[1].Prod_Name);
						$('#summernote3').summernote('code', json[1].Features);
//想要秀出內容大概是這樣 		$('#Features1').html(json[1].Features);
						$("input[name='Ticket_type_1']").val(json[1].Ticket_type_1);
						$("input[name='UnitPrice_1']").val(json[1].UnitPrice_1);
						$("input[name='Ticket_type_2']").val(json[1].Ticket_type_2);
						$("input[name='UnitPrice_2']").val(json[1].UnitPrice_2);
						$("input[name='Ticket_type_3']").val(json[1].Ticket_type_3);
						$("input[name='UnitPrice_3']").val(json[1].UnitPrice_3);
						$("input[name='Ticket_type_4']").val(json[1].Ticket_type_4);
						$("input[name='UnitPrice_4']").val(json[1].UnitPrice_4);
						$("input[name='Discount_Rate']").val(json[1].Discount_Rate);
						$("input[name='Acceptable_Discount_Rate']").val(json[1].Acceptable_Discount_Rate);
						$("input[name='Region']").val(json[1].Region);
						$("input[name='Country']").val(json[1].Country);
						$('#summernote').summernote('code', json[1].Detail);
						$('#summernote2').summernote('code', json[1].Rights);
						
					}
				}
			});
		});
		$("input[name='id']").focus(function() {
			clearForm();
			$(".error").first().html("");
		});
	});
	function clearForm() {
		var inputs = document.getElementsByTagName("input");
		for (var i = 0; i < inputs.length; i++) {
			if (inputs[i].type == "text") {
				inputs[i].value = "";
			}
		}
	}
</script>
</head>
<body>

	<h3>Welcome</h3>

	<h3>Product Table</h3>

	<!-- ENCTYPE="multipart/form-data" -->
	<form name="insert" ENCTYPE="multipart/form-data"
		action="<c:url value="/pages/product.controller" />" method="post">
		<table>
			<tr>
				<td>Product_Id :</td>
				<td><input type="text" name="Product_Id"
					value="${param.Product_Id}"></td>
				<td><span class="error">${errors.Product_Id}</span></td>
			</tr>
			<tr>
				<td>Prod_Name :</td>
				<td><input type="text" name="Prod_Name"
					value="${param.Prod_Name}"></td>
				<td></td>
			</tr>
			<tr>
				<td>Features:</td>
				<td><textarea id="summernote3" name="Features"></textarea></td>
				<td><span id="Features1"></span></td>
				
			</tr>
			<tr>
				<td>Ticket_type_1 :</td>
				<td><input type="text" name="Ticket_type_1"
					value="${param.Ticket_type_1}"></td>
				<td><span class="error">${errors.Ticket_type_1}</span></td>
			</tr>
			<tr>
				<td>UnitPrice_1 :</td>
				<td><input type="text" name="UnitPrice_1"
					value="${param.UnitPrice_1}"></td>
				<td><span class="error">${errors.UnitPrice_1}</span></td>
			</tr>
			<tr>
				<td>Ticket_type_2 :</td>
				<td><input type="text" name="Ticket_type_2"
					value="${param.Ticket_type_2}"></td>
				<td><span class="error">${errors.Ticket_type_2}</span></td>
			</tr>
			<tr>
				<td>UnitPrice_2 :</td>
				<td><input type="text" name="UnitPrice_2"
					value="${param.UnitPrice_2}"></td>
				<td><span class="error">${errors.UnitPrice_2}</span></td>
			</tr>
			<tr>
				<td>Ticket_type_3 :</td>
				<td><input type="text" name="Ticket_type_3"
					value="${param.Ticket_type_3}"></td>
				<td><span class="error">${errors.Ticket_type_3}</span></td>
			</tr>
			<tr>
				<td>UnitPrice_3 :</td>
				<td><input type="text" name="UnitPrice_3"
					value="${param.UnitPrice_3}"></td>
				<td><span class="error">${errors.UnitPrice_3}</span></td>
			</tr>
			<tr>
				<td>Ticket_type_4 :</td>
				<td><input type="text" name="Ticket_type_4"
					value="${param.Ticket_type_4}"></td>
				<td><span class="error">${errors.Ticket_type_4}</span></td>
			</tr>
			<tr>
				<td>UnitPrice_4 :</td>
				<td><input type="text" name="UnitPrice_4"
					value="${param.UnitPrice_4}"></td>
				<td><span class="error">${errors.UnitPrice_4}</span></td>
			</tr>
			<tr>
				<td>Discount_Rate :</td>
				<td><input type="text" name="Discount_Rate"
					value="${param.Discount_Rate}"></td>
				<td><span class="error">${errors.Discount_Rate}</span></td>
			</tr>
			<tr>
				<td>Acceptable_Discount_Rate :</td>
				<td><input type="text" name="Acceptable_Discount_Rate"
					value="${param.Acceptable_Discount_Rate}"></td>
				<td><span class="error">${errors.Acceptable_Discount_Rate}</span></td>
			</tr>
			<tr>
				<td>Main_Image :</td>
				<td><input type="file" name="Main_Image"
					value="${param.Main_Image}"></td>
				<td><span class="error">${errors.Main_Image}</span></td>
			</tr>
			<tr>
				<td>Country :</td>
				<td><select name="Country">
						<option value="JA">日本</option>
						<option value="KO">韓國</option>
						<option value="SA">東南亞</option>
						<option value="AU">紐澳</option>
						<option value="EU">歐洲</option>
						<option value="AM">美加</option>
				</select></td>
				<td><span class="error">${errors.Country}</span></td>
			</tr>
			<tr>
				<td>Region :</td>
				<td><select name="Region">
						<option value="Kan">關西</option>
						<option value="Tok">關東</option>
						<option value="Kyu">九州</option>
						<option value="Oki">沖繩</option>
						<option value="Hok">北海道</option>
				</select></td>
				<td><span class="error">${errors.Region}</span></td>
			</tr>
			<tr>
				<td>Detail:</td>
				<td><textarea id="summernote" name="Detail"></textarea></td>
			</tr>
			<tr>
				<td>Rights:</td>
				<td><textarea id="summernote2" name="Rights"></textarea></td>
			</tr>

			<tr>
				<td><input type="submit" name="prodaction" value="Insert">
					<input type="submit" name="prodaction" value="Update"></td>
				<td><input type="submit" name="prodaction" value="Delete">
					<input type="submit" name="prodaction" value="Select"> <input
					type="button" value="Clear" onclick="clearForm()"></td>
			</tr>
		</table>

	</form>

	<h3>
		<span class="error">${errors.action}</span>
	</h3>

	<%-- 	<c:if test="${not empty delete}"> --%>
	<%-- 		<c:if test="${delete}"> --%>
	<!-- 			<h3>Delete product table success : 1 row deleted</h3> -->
	<%-- 		</c:if> --%>
	<%-- 		<c:if test="${not delete}"> --%>
	<!-- 			<h3>Delete product table success : 0 row deleted</h3> -->
	<%-- 		</c:if> --%>
	<!-- 		<script type="text/javascript"> -->
	<!-- clearForm() -->
	<!-- 		</script> -->
	<%-- 	</c:if> --%>

	<%-- 	<c:if test="${not empty insert}"> --%>
	<!-- 		<h3>Insert product table success</h3> -->
	<!-- 		<table border="1"> -->
	<!-- 			<tr> -->
	<!-- 				<td>Id</td> -->
	<%-- 				<td>${insert.id}</td> --%>
	<!-- 			</tr> -->
	<!-- 			<tr> -->
	<!-- 				<td>Name</td> -->
	<%-- 				<td>${insert.name}</td> --%>
	<!-- 			</tr> -->
	<!-- 			<tr> -->
	<!-- 				<td>Price</td> -->
	<%-- 				<td>${insert.price}</td> --%>
	<!-- 			</tr> -->
	<!-- 			<tr> -->
	<!-- 				<td>Make</td> -->
	<%-- 				<td>${insert.make}</td> --%>
	<!-- 			</tr> -->
	<!-- 			<tr> -->
	<!-- 				<td>Expire</td> -->
	<%-- 				<td>${insert.expire}</td> --%>
	<!-- 			</tr> -->
	<!-- 		</table> -->
	<!-- 		<script type="text/javascript"> -->
	<!-- // clearForm() -->
	<!-- 		</script> -->
	<%-- 	</c:if> --%>

	<%-- 	<c:if test="${not empty update}"> --%>
	<!-- 		<h3>Update product table success</h3> -->
	<!-- 		<table border="1"> -->
	<!-- 			<tr> -->
	<!-- 				<td>Id</td> -->
	<%-- 				<td>${update.id}</td> --%>
	<!-- 			</tr> -->
	<!-- 			<tr> -->
	<!-- 				<td>Name</td> -->
	<%-- 				<td>${update.name}</td> --%>
	<!-- 			</tr> -->
	<!-- 			<tr> -->
	<!-- 				<td>Price</td> -->
	<%-- 				<td>${update.price}</td> --%>
	<!-- 			</tr> -->
	<!-- 			<tr> -->
	<!-- 				<td>Make</td> -->
	<%-- 				<td>${update.make}</td> --%>
	<!-- 			</tr> -->
	<!-- 			<tr> -->
	<!-- 				<td>Expire</td> -->
	<%-- 				<td>${update.expire}</td> --%>
	<!-- 			</tr> -->
	<!-- 		</table> -->
	<!-- 		<script type="text/javascript"> -->
	<!-- // clearForm() -->
	<!-- 		</script> -->
	<%-- 	</c:if> --%>

</body>
</html>