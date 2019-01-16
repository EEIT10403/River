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
@SessionAttributes(names= {"F_OrderBean"})
public class OrderController {
	
	@InitBinder
	public void initBinder(WebDataBinder binder)
	{
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
		dateFormat.setLenient(false);
		binder.registerCustomEditor(java.util.Date.class, new CustomDateEditor(dateFormat, true));
	}
	
	@RequestMapping(path= {"/order.controller"},method=RequestMethod.POST)
	public String saveForm(F_OrderBean orderBean,F_Order_PassengerBean passengerBean,Model model,
			BindingResult bindingResult,HttpSession session) throws Exception {
		
//表單to旅客資料
		
		System.out.println("F_OrderBean ="+orderBean);
				
		String price = orderBean.getF_price();
		int afprice = Integer.parseInt(price);
		int oneperson = (afprice/orderBean.getF_adult()); 
		
		String tax = orderBean.getF_tax();
		int aftax = Integer.parseInt(tax);
		int adulttax = (aftax/orderBean.getF_adult()); 
		
		System.out.println("oneprice ="+oneperson);
		System.out.println("adulttax ="+adulttax);
		
		
		
		session.setAttribute("oneperson", oneperson);
		session.setAttribute("adulttax", adulttax);
		session.setAttribute("orderBean", orderBean);

				
		return "forder.success";
		
		
	}
		
	
 
}