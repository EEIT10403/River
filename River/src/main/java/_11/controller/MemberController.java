package _11.controller;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import _11.model.MemberBean;
import _11.model.MemberService;

@Controller
@SessionAttributes("user")
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	@InitBinder
	public void register(WebDataBinder webDataBinder) {
		webDataBinder.registerCustomEditor(java.util.Date.class, "Birthday", 
				new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));
	}
	
	@RequestMapping("/Member/IntoMemberAcount")
	public String IntoMemberAcount(Model model,String member_Id, 
			MemberBean bean,BindingResult bindingResults, SessionStatus sessionStatus) {
		
		
		System.out.println("/Member/IntoMemberAcount有進來="+member_Id);
		
		MemberBean mBean= memberService.findById(member_Id);
		model.addAttribute("mBean", mBean);
		
		return "MemberAccount.page";
		
	}
	@RequestMapping("/Member/ModifyAccount")
	public String ModifyAccount(Model model,String member_Id, 
			MemberBean bean,BindingResult bindingResults, SessionStatus sessionStatus) {
		
		
		System.out.println("/Member/ModifyAccount有進來="+member_Id);
		
		MemberBean mBean= memberService.findById(member_Id);
		model.addAttribute("mBean", mBean);
		
		return "MemberAccount.modify";
		
	}
	
	
	@RequestMapping("/_11_memberpages/member.controller")
	public String method(Model model,String members, 
			MemberBean bean,BindingResult bindingResults, SessionStatus sessionStatus) {
		System.out.println("bean="+bean);
		System.out.println("bindingResult"+bindingResults);
		
//接收資料
//資料轉換
		Map<String, String> errors = new HashMap<>();
		model.addAttribute("errors", errors);
		if(bindingResults!=null && bindingResults.hasFieldErrors()) {
			if(bindingResults.hasFieldErrors("Birthday")) {
				errors.put("Birthday", "Birthday must be a date of YYYY-MM-DD");
			}
		}
//驗證資料
		
		if(errors!=null && !errors.isEmpty()) {
			return "member.errors";
		}
//呼叫view
		if("Update".equals(members)){
			MemberBean result = memberService.update(bean);
			
				model.addAttribute("mBean", result); 
			
			return "MemberAccount.page";
			
		}else if("Logout".equals(members)) {
			sessionStatus.setComplete();
			return "logout.success";
		}else {
			errors.put("action", "unknow action:" + members);
			return "member.errors";
		}
	}
}
