package _11.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;

import _11.model.MemberBean;
import _11.model.MemberService;

@Controller
public class MemberRegisterController {
	@Autowired
	private MemberService memberService;
	
	@InitBinder
	public void register(WebDataBinder webDataBinder) {
		webDataBinder.registerCustomEditor(java.util.Date.class, "Birthday", 
				new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));
	}
	@RequestMapping("/_11_memberpages/memberRegiste.controller")
	public String method(Model model,String members, String birthday,
			MemberBean bean,BindingResult bindingResults, SessionStatus sessionStatus,HttpSession session) {
		System.out.println("bean="+bean);
		System.out.println("bindingResult"+bindingResults);
		
		System.out.println(bean.getPassword());
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		try {
			bean.setBirthday(formatter.parse(birthday));
		} catch (ParseException e) {
			bean.setBirthday(null);
		}
		
		
		
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
		if("Insert".equals(members) || "Update".equals(members) || "Delete".equals(members)) {
			if (bean == null || bean.getMember_Id().length() == 0) {
				errors.put("member_Id", "Please enter Member_Id for " + members);
			} 
		}
		if(errors!=null && !errors.isEmpty()) {
			return "memberRegister.errors";
		}
//呼叫view
		if("Select".equals(members)) {
			System.out.println(bean);
			List<MemberBean> result = memberService.select(bean);
			model.addAttribute("Select", result);
			System.out.println(result);
			return "memberRegister.Select";
			
		}else if("Insert".equals(members)){
			MemberBean result = memberService.insert(bean);
			if(result == null) {
				errors.put("action", "Insert failed");
			}else {
				
				session.setAttribute("member_Id", result.getMember_Id());
				model.addAttribute("insert", result);
			}
			return "member.logined";
			
		}else if("Update".equals(members)){
			MemberBean result = memberService.update(bean);
			if(result == null) {
				errors.put("action", "Update failed");
			}else {
				model.addAttribute("update", result);
			}
			return "memberRegister.errors";
			
		}else if("Delete".equals(members)) {
			boolean result = memberService.delete(bean);
			model.addAttribute("Delete", result);
			return "memberRegister.errors";
			
		}else if("Logout".equals(members)) {
			sessionStatus.setComplete();
			return "logout.success";
		}else {
			errors.put("action", "unknow action:" + members);
			return "memberRegister.errors";
		}
	}
}
