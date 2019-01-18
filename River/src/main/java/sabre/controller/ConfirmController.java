package sabre.controller;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpSession;

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
import sabre.model.F_OrderBean;
import sabre.model.F_PassengerBean;

@Controller
@SessionAttributes(names= {"F_OrderBean","F_Order_PassengerBean","F_ContactBean"})
public class ConfirmController {
	
	@InitBinder
	public void initBinder(WebDataBinder binder)
	{
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		dateFormat.setLenient(false);
		binder.registerCustomEditor(java.util.Date.class, new CustomDateEditor(dateFormat, true));
	}
	
	
	@RequestMapping(path= {"/confirm.cntroller"},method=RequestMethod.POST)
	public String saveOrder(F_OrderBean forderBean,F_PassengerBean fpassengerBean,F_ContactBean fcontactBean,Model model,
			BindingResult bindingResult,HttpSession session,
			@RequestParam(value="fchname", required = false) List<String> fchname,
			@RequestParam(value="fenfirstname", required = false) List<String> fenfirstname,
			@RequestParam(value="fenlastname", required = false) List<String> fenlastname,
			@RequestParam(value="fgender", required = false) List<String> fgender,
			@RequestParam(value="fbirth", required = false) List<String> fbirth
			) throws Exception {
		
//旅客資料to訂購頁面
			       
		System.out.println("F_PassengerBean ="+fpassengerBean);
		System.out.println("F_ContactBean ="+fcontactBean);
		System.out.println("F_OrderBean ="+forderBean);

		

	    
		session.setAttribute("fpassengerBean",fpassengerBean);
		session.setAttribute("fcontactBean",fcontactBean);
		session.setAttribute("forderBean",forderBean);
				
		return "forder.confirm";
		
		
	}	
	
	
	
 
}