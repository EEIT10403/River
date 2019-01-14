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
		<td><input type="password" name="password" value="${param['password']}"></td>
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
	<div>
		註冊:<input type="button" value="Registered"  onclick="Register();"/>
	</div>
	<div>
        Facebook登入：<input type="button"  value="Facebook登入" onclick="FBLogin();" />
    </div>
    <div>
        Google登入：<input type="button"  value="Google登入" onclick="GoogleLogin();" />
    </div>
	<script type="text/javascript">
		function Register(){
			window.location="http://localhost:8080/River/_11_memberpages/memberRegister.jsp";
		}
	</script>
    <script type="text/javascript">
        //應用程式編號，進入 https://developers.facebook.com/apps/ 即可看到
        let FB_appID = "228035798120942";

        //FB Login 官方文件：https://developers.facebook.com/docs/facebook-login/web

        // Load the Facebook Javascript SDK asynchronously
        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "https://connect.facebook.net/en_US/sdk.js";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));

        window.fbAsyncInit = function () {
            FB.init({
                appId: FB_appID,//FB appID
                cookie: true,  // enable cookies to allow the server to access the session
                
                xfbml: true,  // parse social plugins on this page
                version: 'v3.0' // use graph api version
            });

        };

        //使用自己客製化的按鈕來登入
        function FBLogin() {
            
            FB.login(function (response) {
                //debug用
                console.log(response);
                if (response.status === 'connected') {
                    //user已登入FB
                    //抓userID
                    let FB_ID = response["authResponse"]["userID"];
                    console.log("userID:" + FB_ID);
                    window.location="http://localhost:8080/River/_11_memberpages/member.jsp";
                   
                } else {
                    // user FB取消授權
                    alert("Facebook帳號無法登入");
                }
            }, { scope: 'public_profile,email' });

        }
    </script>

    <!--Google登入-->
    <script async defer src="https://apis.google.com/js/api.js" onload="this.onload=function(){};HandleGoogleApiLibrary()"
            onreadystatechange="if (this.readyState === 'complete') this.onload()"></script>
    <script type="text/javascript">
        //進入 https://console.developers.google.com/，找「憑證」頁籤(記得先選對專案)，即可找到用戶端ID
        let Google_appId = "632974983145-ehaueuvi84jfn65uqq2bsvd8cocg7kdk.apps.googleusercontent.com";


        //參考文章：http://usefulangle.com/post/55/google-login-javascript-api 

        // Called when Google Javascript API Javascript is loaded
        function HandleGoogleApiLibrary() {
            // Load "client" & "auth2" libraries
            gapi.load('client:auth2', {
                callback: function () {
                    // Initialize client & auth libraries
                    gapi.client.init({
                        clientId: Google_appId,
                        scope: 'https://www.googleapis.com/auth/userinfo.profile https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/plus.me'
                    }).then(
                        function (success) {
                            // Google Libraries are initialized successfully
                            // You can now make API calls 
                            console.log("Google Libraries are initialized successfully");
                        },
                        function (error) {
                            // Error occurred
                            console.log(error);// to find the reason 
                        }
                    );
                },
                onerror: function () {
                    // Failed to load libraries
                    console.log("Failed to load libraries");
                }
            });
        }



        function GoogleLogin() {
            // API call for Google login  
            gapi.auth2.getAuthInstance().signIn().then(
                function (success) {
                    // Login API call is successful 
                    console.log(success);
                    let Google_ID = success["El"];
                   
                    window.location="http://localhost:8080/River/_11_memberpages/member.jsp";
                },
                function (error) {
                    // Error occurred
                    // console.log(error) to find the reason
                    console.log(error);
                }
                  
            );

        }



    </script>

    <!--有些網站會做帳號和user FB帳號的綁定/解除綁定，或你想讓使用者刪除你的FB App，讓使用者下次可以切換不同FB帳號登入你的網站-->
    <!--下面程式碼派得上用場-->
     <script type="text/javascript">
        
//刪除使用者已授權你的FB App，好讓使用者下次重新授權你的FB App
//參考：https://stackoverflow.com/questions/6634212/remove-the-application-from-a-user-using-graph-api/7741978#7741978
function Del_FB_App() { 
    FB.getLoginStatus(function (response) {//取得目前user是否登入FB網站
        //debug用
        console.log(response);
        if (response.status === 'connected') {
            // Logged into Facebook.
            //抓userID
            FB.api("/me/permissions", "DELETE", function (response) {
                console.log("刪除結果");
                console.log(response); //gives true on app delete success 
            });
        } else {
            // FB取消授權
            console.log("無法刪除FB App");
        }
    });


}

     </script>

     <!--類似上面Delete FB App的效果，呼叫此function後，下次使用者想再Google登入你的網站就必須重新選擇帳號-->
     <script type="text/javascript">
   
     //參考：https://developers.google.com/identity/sign-in/web/disconnect

     function Google_disconnect() {
    var auth2 = gapi.auth2.getAuthInstance();
    auth2.disconnect().then(function () {
        console.log('User disconnect.'); 
    });
     }


    </script>
</body>
</html>