<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Member</title>

<link rel="stylesheet" type="text/css" href="../css/main.css" />

<title>Product</title>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
var contextPath = "${pageContext.request.contextPath}";
$(document).ready(function() {
	$('input[name="member_Id"]').blur(function() {
		$.ajax({
			method: "GET",
			url: contextPath+"/_11_memberpages/member.view",
			data: "member_Id="+$('input[name="member_Id"]').val(),
			dataType: "json",
			cache: false,
			async: true,
			success: function(json) {
				$(".error").first().append(json[0].text);
				if(json[0].hasMoreData) {
					$("input[name='member_Id']").val(json[1].member_Id);
					$("input[name='email']").val(json[1].email);
					$("input[name='chinese_Name']").val(json[1].chinese_Name);
					$("input[name='english_Name']").val(json[1].english_Name);
					$("input[name='ID_number']").val(json[1].ID_number);
					$("input[name='telephone']").val(json[1].telephone);
					$("input[name='country']").val(json[1].country);
					$("input[name='birthday']").val(json[1].birthday);
					$("input[name='sex']").val(json[1].sex);
					$("input[name='address']").val(json[1].address);
				}
			}
		});
	});
	$("input[name='member_Id']").focus(function() {
		clearForm();
		$(".error").first().html("");
	});
});
function clearForm() {
	var inputs = document.getElementsByTagName("input");
	for(var i=0; i<inputs.length; i++) {
		if(inputs[i].type=="text") {
			inputs[i].value="";
		}
	}
}
</script>

</head>
<body>
<h3>Welcome</h3>
<h3>Member Table</h3>

<form action="<c:url value="/_11_memberpages/member.controller" />" method="post">
<table>
	<tr>
		<td>ID : ${user.member_Id}</td>
		<td><input type="hidden" name="member_Id" value="${user.member_Id}"></td>
		<td><span class="errors">${errors.member_Id}</span></td>
	</tr>
	<tr>
		<td>email :</td>
		<td><input type="text" name ="email" value="${user.email}"></td>
		<td><span class="errors">${errors.email}</span></td>
	</tr>
	<tr>
		<td>Chinese_Name :</td>
		<td><input type="text" name ="chinese_Name" value="${user.chinese_Name}"></td>		
	</tr>
	<tr>
		<td>English_Name :</td>
		<td><input type="text" name ="english_Name" value="${user.english_Name}"></td>
	</tr>
	<tr>
		<td>ID_number :</td>
		<td><input type="text" name ="ID_number" value="${user.ID_number}" readonly></td>
		<td><span class="errors">${errors.ID_number}</span></td>
	</tr>
	<tr>
		<td>Telephone :</td>
		<td><input type="text" name ="telephone" value="${user.telephone}"></td>
		<td><span class="errors">${errors.telephone}</span></td>
	</tr>
	<tr>
		<td>Country :</td>
		<td><input type="text" name ="country" value="${user.country}"></td>
		<td><span class="errors">${errors.country}</span></td>
	</tr>
	<tr>
		<td>Birthday :</td>
		<td><input type="text" name ="birthday" value="${user.birthday}"></td>
		<td><span class="errors">${errors.birthday}</span></td>
	</tr>
	<tr>
		<td>Sex :</td>
		<td><input type="text" name ="sex" value="${user.sex}"></td>
		<td><span class="errors">${errors.sex}</span></td>
	</tr>
	<tr>
		<td>Address :</td>
		<td><input type="text" name ="Address" value="${user.address}"></td>
		<td><span class="errors">${errors.address}</span></td>
	</tr>
	<tr>
		<td>
			<input type="submit" name="members" value="Update">
		</td>
<!-- 		<td><input type="submit" name="members" onclick="logOut()" value="Logout"></td>	  -->
		<td><input type="submit" name="members" value="Logout"></td>	 
	</tr>
</table>
</form>
<h3><span class="error">${errors.action}</span></h3>
<c:if test="${not empty delete}">
	<c:if test="${delete}">
		<h3>Delete member table success : 1 row deleted</h3>
	</c:if>
	<c:if test="${not delete}">
		<h3>Delete member table success : 0 row deleted</h3>
	</c:if>
	<script type="text/javascript">clearForm()</script>	
</c:if>


<c:if test="${not empty update}">
	<h3>Update member table success</h3>
	<table border="1">
		<tr><td>Member_Id</td><td>${update.member_Id}</td></tr>
		<tr><td>email</td><td>${update.email}</td></tr>
		<tr><td>Chinese_Name</td><td>${update.chinese_Name}</td></tr>
		<tr><td>English_Name</td><td>${update.english_Name}</td></tr>
		<tr><td>ID_number</td><td>${update.ID_number}</td></tr>
		<tr><td>Telephone</td><td>${update.telephone}</td></tr>
		<tr><td>Country</td><td>${update.country}</td></tr>
		<tr><td>Birthday</td><td>${update.birthday}</td></tr>
		<tr><td>Sex</td><td>${update.sex}</td></tr>
		<tr><td>Address</td><td>${update.address}</td></tr>
	</table>
<!-- 	<script type="text/javascript"> -->
<!-- // 	function logOut(){ -->

<!-- // 		$.ajax({ -->
<!-- // 			  url: "/logOut", -->
<!-- // 			}).done(function() { -->
<!-- // 			 alert(1111111111111) -->
<!-- // 			}); -->
<!-- // 	} -->
<!-- 	</script> -->
	
</c:if>
</body>
</html>