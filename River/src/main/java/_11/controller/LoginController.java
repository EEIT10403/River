package _11.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.net.ssl.HttpsURLConnection;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import _11.model.MemberBean;
import _11.model.MemberService;

@Controller
@SessionAttributes("user")
public class LoginController {
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private ApplicationContext context;
	
	@RequestMapping("/_11_secure/LineLogin")
	public String LineLogin(Model model,HttpSession session,HttpServletRequest request) throws IOException {
		
		
		System.out.println("有進LineLogin");
		
		String code = request.getParameter("code");
		System.out.println("code="+code);
		
		
		//衝去拿 access token
		
String USER_AGENT = "Mozilla/5.0";
		
		String url = "https://api.line.me/oauth2/v2.1/token";
        URL obj = new URL(url);
        HttpsURLConnection con = (HttpsURLConnection) obj.openConnection();

        //添加请求头
        con.setRequestMethod("POST");
        con.setRequestProperty("User-Agent", USER_AGENT);
        con.setRequestProperty("Accept-Language", "en-US,en;q=0.5");

//        String urlParameters = "grant_type=authorization_code&code="+code+"&redirect_uri=http://localhost:8080/River/_11_secure/LineLogin&client_id=1640084803&client_secret=087223ff0a1223a55c6cff2a6dd67f9a";
        String urlParameters = "grant_type=authorization_code&code="+code+"&redirect_uri=http://eeitdemoriver18.southeastasia.cloudapp.azure.com:8080/River/_11_secure/LineLogin&client_id=1641826576&client_secret=681025127ee008b230191423ce8ce0f1" ;

        //发送Post请求
        con.setDoOutput(true);
        DataOutputStream wr = new DataOutputStream(con.getOutputStream());
        wr.writeBytes(urlParameters);
        wr.flush();
        wr.close();

        int responseCode = con.getResponseCode();
        System.out.println("\nSending 'POST' request to URL : " + url);
        System.out.println("Post parameters : " + urlParameters);
        System.out.println("Response Code : " + responseCode);

        BufferedReader in = new BufferedReader(
                new InputStreamReader(con.getInputStream()));
        String inputLine;
        StringBuffer response = new StringBuffer();

        while ((inputLine = in.readLine()) != null) {
            response.append(inputLine);
        }
        in.close();

        //打印结果
        System.out.println(response.toString());
        
        String res = response.toString();
        String[] res1 = res.split(",");
        String[] res2 = res1[0].split(":");
        String access = res2[1].substring(1, res2[1].length()-1);
        System.out.println(access);
        
        
        //再去要個資
        
        String url2 = "https://api.line.me/v2/profile?grant_type=authorization_code&code="+code+"&redirect_uri=http://eeitdemoriver18.southeastasia.cloudapp.azure.com:8080/River/_11_secure/LineLogin&client_id=1641826576&client_secret=681025127ee008b230191423ce8ce0f1";

        URL obj2 = new URL(url2);
        HttpURLConnection con2 = (HttpURLConnection) obj2.openConnection();

        //默认值我GET
        con2.setRequestMethod("GET");
        con2.setRequestProperty("Authorization", "Bearer "+access);
        //添加请求头
        con2.setRequestProperty("User-Agent", USER_AGENT);

        int responseCode2 = con2.getResponseCode();
        System.out.println("\nSending 'GET' request to URL : " + url2);
        System.out.println("Response Code : " + responseCode2);

        BufferedReader in2 = new BufferedReader(
                new InputStreamReader(con2.getInputStream()));
        String inputLine2;
        StringBuffer response2 = new StringBuffer();

        while ((inputLine2 = in2.readLine()) != null) {
            response2.append(inputLine2);
        }
        in2.close();

        //打印结果
        System.out.println(response2.toString());

		String resUser = response2.toString();
		String[] temp1 = resUser.split(",");
		String[] temp2 = temp1[0].split(":");
		String[] temp3 = temp1[1].split(":");
		String[] temp4 = temp1[2].split(":");
		String userId = temp2[1].substring(1, temp2[1].length()-1); System.out.println(userId);
		String displayName = temp3[1].substring(1, temp3[1].length()-1); System.out.println(displayName);
		String pictureUrl = temp4[1].substring(1, temp4[1].length())+":"+temp4[2].substring(0, temp4[2].length()-2); System.out.println(pictureUrl);
		
	
		
		
		
		//驗證資料
				MemberBean bean = memberService.ThirdPartylogin(userId);
			
		//呼叫view
				if(bean==null) {
					
					MemberBean newMember =new MemberBean();
					newMember.setMember_Id(userId);
					newMember.setChinese_Name(displayName);
					MemberBean newBean = memberService.insert(newMember);
					session.setAttribute("member_Id", newBean.getMember_Id());
					model.addAttribute("user", newBean);
					
					System.out.println("有從Line取得資料生成一個會員資料="+newBean);
					
					return "member.logined";
				}else {
					
					session.setAttribute("member_Id", bean.getMember_Id());
					model.addAttribute("user", bean);
					System.out.println("有找到一個會員資料="+bean);
					return "member.logined";
				}
		
		
	}
	
	@RequestMapping("/_11_secure/FBLogin")
	public String FBLogin(String member_Id, Model model,HttpSession session) {
		Locale locale = LocaleContextHolder.getLocale();
		
		System.out.println("有進來/_11_secure/FBLogin"+member_Id);
		
//接收資料
//驗證資料
		MemberBean bean = memberService.ThirdPartylogin(member_Id);
	
//呼叫view
		if(bean==null) {
			
			MemberBean newMember =new MemberBean();
			newMember.setMember_Id(member_Id);
			MemberBean newBean = memberService.insert(newMember);
			session.setAttribute("member_Id", newBean.getMember_Id());
			model.addAttribute("user", newBean);
			
			System.out.println("有用FB帳號生成一個會員資料="+newBean);
			
			return "member.logined";
		}else {
			
			session.setAttribute("member_Id", bean.getMember_Id());
			model.addAttribute("user", bean);
			System.out.println("有找到一個會員資料="+bean);
			return "member.logined";
		}
	}
	
	
	@RequestMapping("/_11_secure/GoogleLogin")
	public String GoogleLogin(String member_Id, Model model,HttpSession session) {
		Locale locale = LocaleContextHolder.getLocale();
		
		System.out.println("有進來/_11_secure/GoogleLogin"+member_Id);
		
//接收資料
//驗證資料
		MemberBean bean = memberService.ThirdPartylogin(member_Id);
	
//呼叫view
		if(bean==null) {
			
			MemberBean newMember =new MemberBean();
			newMember.setMember_Id(member_Id);
			MemberBean newBean = memberService.insert(newMember);
			session.setAttribute("member_Id", newBean.getMember_Id());
			model.addAttribute("user", newBean);
			
			System.out.println("有生成一個會員資料="+newBean);
			
			return "member.logined";
		}else {
			
			session.setAttribute("member_Id", bean.getMember_Id());
			model.addAttribute("user", bean);
			System.out.println("有找到一個會員資料="+bean);
			return "member.logined";
		}
	}
	
	@RequestMapping("/Member/Logout")
	public String Logout(Model model,
			MemberBean bean,BindingResult bindingResults, SessionStatus sessionStatus,HttpSession session) {
		
		
		System.out.println("/Member/Logout有進來");
		
//		sessionStatus.setComplete(); 不能用
		session.invalidate();
	
		
//		System.out.println(session.getAttribute("member_Id")); 沒辦法這樣側了
		
		return "logout.success";
		
	}
	
	@RequestMapping("/_11_secure/login.controller")
	public String method(String username, String password, Model model,HttpSession session) {
		Locale locale = LocaleContextHolder.getLocale();
		
//接收資料
//驗證資料
		Map<String, String> errors = new HashMap<>();
		model.addAttribute("errors", errors);
		
		if(username == null || username.length() == 0) {
			errors.put("IDerror", context.getMessage("login.username.required",  null, locale));
		}
		if(password == null || password.length() == 0) {
			errors.put("PWerror", context.getMessage("login.password.required", null, locale));
		}
		if(errors != null && !errors.isEmpty()) {
			return "login.errors";
		}
//呼叫model
		MemberBean bean = memberService.longin(username, password);
	
//呼叫view
		if(bean==null) {
			errors.put("IDerror", "Login failed");
			return "login.errors";
		}else {
			
			session.setAttribute("member_Id", bean.getMember_Id());
			model.addAttribute("user", bean);
			return "member.logined";
		}
	}
	
	@ResponseBody  
	public String getUserInfo(String userInfo) {  
	    System.out.println(userInfo);  
	    return userInfo;  
	}  
}
