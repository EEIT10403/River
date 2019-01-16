package sabre.controller;

import java.text.SimpleDateFormat;

import javax.servlet.http.HttpSession;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import sabre.model.F_OrderBean;
import sabre.model.F_Order_PassengerBean;

@Controller
@SessionAttributes(names= {"F_OrderBean","F_Order_PassengerBean"})
public class ConfirmController {
	
	@InitBinder
	public void initBinder(WebDataBinder binder)
	{
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		dateFormat.setLenient(false);
		binder.registerCustomEditor(java.util.Date.class, new CustomDateEditor(dateFormat, true));
	}
	
	
	@RequestMapping(path= {"/confirm.cntroller"},method=RequestMethod.POST)
	public String saveOrder(F_OrderBean orderBean,F_Order_PassengerBean passengerBean,Model model,
			BindingResult bindingResult,HttpSession session) throws Exception {
		
//旅客資料to訂購頁面
		
		System.out.println("F_Order_PassengerBean ="+passengerBean);
		System.out.println("F_OrderBean ="+orderBean);
		
		
		
		
//		System.out.println("session ="+session.getAttributeNames());
				
		return "order.confirm";
		
		
	}	
	
	
	
 
}