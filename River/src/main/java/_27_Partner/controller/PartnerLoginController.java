package _27_Partner.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;

import _11.model.MemberBean;
import _27_Partner.model.StaffBean;
import _27_Partner.model.StaffService;
@Controller
public class PartnerLoginController {
	@Autowired
	private StaffService staffService;
//	@Autowired
//	private ApplicationContext context;
	
	@RequestMapping(path= {"/partner/login"})
	public String method(@RequestParam("staff_Id")String staff_id, @RequestParam("password")String password,Model model,String myLocale,HttpSession session) {
//		HttpSession session
//		Locale locale = LocaleContextHolder.getLocale();
		System.out.println("有進/partner/login"+staff_id+password);
		
//		System.out.println(username+"有進來"+password);
		Map<String, String> errors = new HashMap<>();
		model.addAttribute("errors", errors);
		if(staff_id==null || staff_id.length()==0) {
			errors.put("xxx1", "請輸入合作廠商帳號");
		}
		if(password==null || password.length()==0) {
			errors.put("xxx2", "請輸入合作廠商密碼");
		}
		
		if(errors!=null && !errors.isEmpty()) {
//			return "/secure/login.jsp";
			return "partner.login";
		}
		//呼叫model
				StaffBean bean = staffService.login(staff_id, password);
				
		//呼叫view
				if(bean==null) {
					errors.put("xxx1", "Login failed");
//					return "/secure/login.jsp";
					return "partner.login";
				} else {
					
//					session.setAttribute("user", bean);
					model.addAttribute("staff", bean);
					session.setAttribute("staff_id", bean.getStaff_Id());
					session.setAttribute("staff_Name", bean.getChinese_Name());
//					String path = request.getContextPath();
//					response.sendRedirect(path+"/index.jsp");
					System.out.println("有成功");
					return "product.management";
				}
	
	}
	@RequestMapping("/Partner/Logout")
	public String Logout(Model model,
			MemberBean bean,BindingResult bindingResults, SessionStatus sessionStatus,HttpSession session) {
		
		
		System.out.println("/Partner/Logout有進來");
		
//		sessionStatus.setComplete(); 不能用
		session.removeAttribute("staff_id");
		session.removeAttribute("staff_Name");
	
		
//		System.out.println(session.getAttribute("member_Id")); 沒辦法這樣側了
		
		return "logout.success";
		
	}
	
}
