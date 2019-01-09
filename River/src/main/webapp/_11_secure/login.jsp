<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="fb" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

<!-- <link rel="stylesheet" type="text/css" href="../css/main.css" /> -->

<title>Login</title>
<script type="text/javascript" src="/static/jquery-1.7.2.min.js"></script>  

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
		<td>PWD : </td>
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
		<td align="right"><input type="submit" value="Login"></td>
	</tr>
</table>
</form>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/zh_HK/sdk.js#xfbml=1&version=v3.2&appId=228035798120942&autoLogAppEvents=1';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script> 
<div class="fb-login-button" data-max-rows="1" data-size="large" data-button-type="continue_with" data-show-faces="true" data-auto-logout-link="false" data-use-continue-as="true"></div>
      
<script>  
  
    function statusChangeCallback(response) {   
        //可用於後台驗證，但是前台調用SDK則會自動驗證  
        var accessToken=response.authResponse.accessToken;  
        console.log(response.authResponse.accessToken);  
        if (response.status === 'connected') {//sdk會自動保留accessToken，並且驗證該請求是否來自我的應用  
            FB.api('/me?fields=name,first_name,last_name,email', function(response) {   
                //將用户信息傳回服務端  
                window.location.href="http://gntina.iok.la/userInfo?userInfo="+JSON.stringify(response);  
                /* $.ajax({ 
                        url:"http://gntina.iok.la/userInfo", 
                        data:{ 
                            userInfo:JSON.stringify(response) 
                        }, 
                        dataType:"json", 
                        async:false, 
                        success:function(data){ 
                            window.location.href=""; 
                        }  
                    }); */  
                document.getElementById('status').innerHTML =  
                    'Thanks for logging in, ' + response.name + '!';  
            });  
              
        } else {  
            document.getElementById('status').innerHTML = 'Please log '  
                    + 'into this app.';  
        }  
    }  
  
    function checkLoginState() {  
        FB.getLoginStatus(function(response) {  
            statusChangeCallback(response);  
        });   
    }  
  
    window.fbAsyncInit = function() {  
        FB.init({  
            appId : '應用編號',  
            cookie : true,   
            xfbml : true,   
            version : 'v2.8'   
        });  
  
        FB.getLoginStatus(function(response) {  
            statusChangeCallback(response);  
        });  
  
    };  
  
</script> 
</body>
</html>