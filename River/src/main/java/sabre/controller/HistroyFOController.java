package sabre.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import sabre.model.F_ContactService;
import sabre.model.F_OrderBean;
import sabre.model.F_OrderService;

@Controller
@SessionAttributes(names= {"F_OrderBean","F_Order_PassengerBean","F_ContactBean"})
public class HistroyFOController {
	
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
	
	
	@RequestMapping(path= {"/histroy.cntroller"},method=RequestMethod.GET)
	public String saveOrder(String member_Id,Model model,HttpSession session) throws Exception {
		
	   
		session.removeAttribute("orderList");
//旅客資料to訂購頁面
		//呼叫view
//		String member_Id = (String) session.getAttribute("member_Id");
		System.out.println("有進histroy.cntroller; ID =" + member_Id); // 測試有沒有進來
				
		List<F_OrderBean> Orderlist = f_OrderService.findOrdersByMemberId(member_Id);
//		System.out.println("後端"+Orderlist);
		

		session.setAttribute("orderList", Orderlist);
		session.removeAttribute(member_Id);
		
		
		List<F_OrderBean> Orderlist11 =(List<F_OrderBean>) session.getAttribute("orderList");
		System.out.println("session 裡有"+Orderlist11);
		
				
		return "forder.histroy";
		
		
	}	
	
 
}