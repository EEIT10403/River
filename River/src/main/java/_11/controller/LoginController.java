package _11.controller;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import _11.model.MemberBean;
import _11.model.MemberService;

@Controller
@SessionAttributes("user")
public class LoginController {
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private ApplicationContext context;
	
	@RequestMapping("/_11_secure/login.contriller")
	public String method(String username, String password, Model model) {
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
		MemberBean bean = memberService.l
		return null;
		
	}
}
