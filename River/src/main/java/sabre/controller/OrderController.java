package sabre.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

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
	public String saveForm(F_OrderBean forderBean,Model model,BindingResult bindingResult,HttpSession session) throws Exception {
		
//表單to旅客資料
		
		System.out.println("F_OrderBean ="+forderBean);
		
	//生產訂單編號
		Date date = new Date();
		SimpleDateFormat bartDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");       
		String FODstr = bartDateFormat.format(date);
		
		String Forder_No = "FOD"+FODstr;
		System.out.println("FOD ="+Forder_No);
		       
   //生產訂位六碼
		String alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		Random random = new Random();
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < 6; ++i) {
		    int number = random.nextInt(26);
		    sb.append(alphabet.charAt(number));
		}
		String Booking_code = sb.toString();
		System.out.println("Booking_code ="+Booking_code); 
	    

		     
	
		session.setAttribute("booking_code", Booking_code);
		session.setAttribute("forder_No", Forder_No);
		session.setAttribute("forderBean", forderBean);

				
		return "forder.success";
		
		
	}
		
	
 
}