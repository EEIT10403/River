package _11.controller;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

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
	
	@RequestMapping("/_11_secure/GoogleLogin")
	public String GoogleLogin(String member_Id, Model model,HttpSession session) {
		Locale locale = LocaleContextHolder.getLocale();
		
		System.out.println("有進來/_11_secure/GoogleLogin"+member_Id);
		
//接收資料
//驗證資料
		MemberBean bean = memberService.Googlelogin(member_Id);
	
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
