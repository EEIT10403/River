package sabre.controller;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import sabre.model.F_ContactBean;
import sabre.model.F_ContactService;
import sabre.model.F_OrderBean;
import sabre.model.F_OrderService;
import sabre.model.F_PassengerListBean;

@Controller
@SessionAttributes(names= {"F_OrderBean","F_Order_PassengerBean","F_ContactBean"})
public class ConfirmController {
	
	@Autowired
	private F_OrderService f_OrderService;
	@Autowired
	private F_ContactService f_ContactService;
	
	@InitBinder
	public void initBinder(WebDataBinder binder)
	{
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		dateFormat.setLenient(false);
		binder.registerCustomEditor(java.util.Date.class, new CustomDateEditor(dateFormat, true));
	}
			
	
//接收資料	
	@RequestMapping(path= {"/confirm.cntroller"},method=RequestMethod.POST)
	public String saveOrder(F_OrderBean forderBean,F_PassengerListBean fpassengerListBean,F_ContactBean fcontactBean,Model model,
			BindingResult bindingResult,HttpSession session,
			@RequestParam(value="fchname", required = false) List<String> fchname,
			@RequestParam(value="fenfirstname", required = false) List<String> fenfirstname,
			@RequestParam(value="fenlastname", required = false) List<String> fenlastname,
			@RequestParam(value="fgender", required = false) List<String> fgender,
			@RequestParam(value="fbirth", required = false) List<String> fbirth
			) throws Exception {
		String member_Id = (String) session.getAttribute("member_Id");
		System.out.println("有進confirm.cntroller; ID =" + member_Id); // 測試有沒有進來
//旅客資料to訂購頁面
	//呼叫view
		System.out.println("檢查F_OrderBean ="+forderBean);
		
		F_OrderBean insert = f_OrderService.insert(forderBean);
		
		model.addAttribute("insert", insert);
		
		System.out.println("================機票訂單進入資料庫================");
				
		System.out.println("F_ContactBean ="+fcontactBean);
		F_ContactBean insertC = f_ContactService.insert(fcontactBean);
			
		model.addAttribute("insertC", insertC);
		
		
		System.out.println("================聯絡人進入資料庫================");
		
		
		
		System.out.println("F_PassengerListBean ="+fpassengerListBean);
		
	
		session.setAttribute("fpassengerListBean", fpassengerListBean);
		
		session.setAttribute("forderBean", forderBean);
		session.removeAttribute(member_Id);
						
		return "forder.confirm";
		
		
	}	
	
	
	
 
}