package _27_Order.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

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
import org.springframework.web.bind.annotation.ResponseBody;

import DaytourProduct.misc.PrimitiveNumberEditor;
import DaytourProduct.model.DayTour_ProductBean;
import DaytourProduct.model.ProductService;
import _27_Order.model.OrderItemBean;
import _27_Order.model.OrderItemService;
import _27_Order.model.OrderSellBean;
import _27_Order.model.OrderSellService;
import _27_Order.model.OrderSumBean;
import _27_Order.model.TravelerBean;
import _27_Order.model.TravelerService;

@Controller
public class MemberOrderPage {

	@Autowired
	private TravelerService travelerService;

	@Autowired
	private OrderItemService orderItemService;
	
	@Autowired
	private OrderSellService orderSellService;
	@Autowired
	private ProductService productService;

	@InitBinder
	public void registerPropertyEditor(WebDataBinder webDataBinder) {
		webDataBinder.registerCustomEditor(java.util.Date.class,
				new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));

		webDataBinder.registerCustomEditor(int.class, new PrimitiveNumberEditor(java.lang.Integer.class, true));

		webDataBinder.registerCustomEditor(double.class, new PrimitiveNumberEditor(java.lang.Double.class, true));
	}

	@RequestMapping("/Order/IntoMemberOrderPage")
	public String GoToOrderPage(Model model, String member_Id,
			HttpSession session) throws IOException, ServletException, SQLException {

		System.out.println("有進IntoMemberOrderPage" + member_Id); // 測試有沒有進來
		
		


		List<OrderSellBean> Orderlist = orderSellService.findOrdersByMemberId(member_Id);
//		System.out.println("後端"+Orderlist);
		
		model.addAttribute("orderList", Orderlist);
		session.setAttribute("member_Id", member_Id);

		return "MemberOrders.list";

	}
	
	@RequestMapping("/Order/OrdersItemPage")
	public String OrdersItemPage(Model model, String Order_No,
			HttpSession session) throws IOException, ServletException, SQLException {
		
		String member_Id = (String) session.getAttribute("member_Id");

		System.out.println("有進/OrdersItemPage" + Order_No); // 測試有沒有進來
		System.out.println("有進/OrdersItemPage"+ member_Id); // 測試有沒有進來
 
		OrderSellBean orderSellBean = orderSellService.findOrdersByOrder_No(Order_No);
		List<OrderItemBean> orderItemBean = orderItemService.findItemsByOrder_No(Order_No);
		
		DayTour_ProductBean dayTour_Productbean = productService.findByPrimaryKey(orderItemBean.get(0).getProduct_Id());
		
		List<TravelerBean> travelerList = travelerService.findTravelerByOrder_NO(Order_No);
		System.out.println("dayTour_Productbean"+dayTour_Productbean);
//		System.out.println("後端"+Orderlist);
		System.out.println("orderSellBean"+orderSellBean);
		
		
		
		
		
		model.addAttribute("order", orderSellBean);
		model.addAttribute("travelers", travelerList);
		model.addAttribute("orderItems", orderItemBean);
		model.addAttribute("pBean", dayTour_Productbean);
		
		
		return "OrdersItemPage.list";

	}
	
	@RequestMapping("/Order/Payment")
	public String Payment(Model model, String Order_No,
			HttpSession session) throws IOException, ServletException, SQLException {
		
		String member_Id = (String) session.getAttribute("member_Id");

		System.out.println("有進/Payment" + Order_No); // 測試有沒有進來
		System.out.println("有進/Payment"+ member_Id); // 測試有沒有進來
 
		OrderSellBean orderSellBean = orderSellService.findOrdersByOrder_No(Order_No);
		List<OrderItemBean> orderItemBean = orderItemService.findItemsByOrder_No(Order_No);
		
		DayTour_ProductBean dayTour_Productbean = productService.findByPrimaryKey(orderItemBean.get(0).getProduct_Id());
		
		List<TravelerBean> travelerList = travelerService.findTravelerByOrder_NO(Order_No);
		System.out.println("dayTour_Productbean"+dayTour_Productbean);
//		System.out.println("後端"+Orderlist);
		System.out.println("orderSellBean"+orderSellBean);
		
		
		
		
		
		model.addAttribute("order", orderSellBean);
		model.addAttribute("travelers", travelerList);
		model.addAttribute("orderItems", orderItemBean);
		model.addAttribute("pBean", dayTour_Productbean);
		
		
		return "Order.payment";

	}
	
	@RequestMapping("/Order/GetSalesSum")
	public String GetSalesSum(Model model,
			HttpSession session, String startWord) throws IOException, ServletException, SQLException {
		
		String member_Id = (String) session.getAttribute("member_Id");

		System.out.println("有進/Order/GetSalesSum"+ member_Id); // 測試有沒有進來
 
		
		
		List listReturn = orderItemService.getSalesSum();
		
		System.out.println("有回來"+listReturn);
		
		
		List<OrderSumBean> listRank = new ArrayList() ;
		
		for(Object row :listReturn) {
			Object[] cells = (Object[]) row;  
//			System.out.println(cells[0]);
//			System.out.println(cells[1]);
//			System.out.println(cells[2]);
			
			OrderSumBean sumBean = new OrderSumBean();
			sumBean.setProduct_Id((String)cells[0]);
			sumBean.setProd_Name((String)cells[1]);
			sumBean.setTotalSales((int)cells[2]);
			
			listRank.add(sumBean);
		}
		
		
		List<OrderSumBean> listK = new ArrayList() ;
		List<OrderSumBean> listT = new ArrayList() ;
		List<OrderSumBean> listU = new ArrayList() ;
		List<OrderSumBean> listH = new ArrayList() ;
		List<OrderSumBean> listO = new ArrayList() ;
		
		for(Object row :listReturn) {
			Object[] cells = (Object[]) row;  
//			System.out.println(cells[0]);
//			System.out.println(cells[1]);
//			System.out.println(cells[2]);
			
			OrderSumBean sumBean = new OrderSumBean();
			sumBean.setProduct_Id((String)cells[0]);
			sumBean.setProd_Name((String)cells[1]);
			sumBean.setTotalSales((int)cells[2]);
			
			if(sumBean.getProduct_Id().startsWith("K")) {
				listK.add(sumBean);
			}
			if(sumBean.getProduct_Id().startsWith("T")) {
				listT.add(sumBean);
			}
			if(sumBean.getProduct_Id().startsWith("O")) {
				listO.add(sumBean);
			}
			if(sumBean.getProduct_Id().startsWith("H")) {
				listH.add(sumBean);
			}
			if(sumBean.getProduct_Id().startsWith("U")) {
				listU.add(sumBean);
			}
		}
//		System.out.println(listK);
		
		
		model.addAttribute("SalesSumRank", listRank);
		model.addAttribute("SalesSumK", listK);
		model.addAttribute("SalesSumT", listT);
		model.addAttribute("SalesSumU", listU);
		model.addAttribute("SalesSumH", listH);
		model.addAttribute("SalesSumO", listO);
		
		
		return "product.report";

	}
	
	@RequestMapping("/Order/DeleteOrderSell")
	public String DeleteOrderSell(Model model, String Order_No,
			HttpSession session) throws IOException, ServletException, SQLException {
		
		String member_Id = (String) session.getAttribute("member_Id");

		System.out.println("有進/Order/DeleteOrderSell" + Order_No); // 測試有沒有進來
		System.out.println("有進/Order/DeleteOrderSell" + member_Id); // 測試有沒有進來


		Boolean deleteSuccess = orderSellService.removeByOrder_No(Order_No);
		
//		System.out.println("後端"+Orderlist);
		if(deleteSuccess) {
			
			List<OrderSellBean> Orderlist =	orderSellService.findOrdersByMemberId(member_Id);
		model.addAttribute("orderList", Orderlist);

		}
		return "MemberOrders.list";

	}
	
	@RequestMapping("/Order/PayResult")
	public String PayResult(Model model,int RtnCode, 
			HttpSession session) throws IOException, ServletException, SQLException {
		
		
		String member_Id = (String) session.getAttribute("member_Id");
        String Order_No = (String) session.getAttribute("Order_No");
		System.out.println("有進/Order/PayResult" + Order_No); // 測試有沒有進來
		System.out.println("有進/Order/PayResult" + member_Id); // 測試有沒有進來
		System.out.println("交易成功代碼-"+RtnCode);
		
		
			
			List<OrderItemBean> oBeans = orderItemService.findItemsByOrder_No(Order_No);
			
			
		if(RtnCode==1) {  //改item狀態
			for(OrderItemBean bean:oBeans) {
				bean.setUnpaid_Amount(0);
				bean.setPaid_Amount(bean.getTotal_Amount());
				orderItemService.update(bean);
			}
			
			OrderSellBean orderSellBean = orderSellService.findOrdersByOrder_No(Order_No);
			orderSellBean.setCanceltag("NO"); //改訂單狀態
			orderSellService.update(orderSellBean);
			
			
			List<OrderItemBean> orderItemBean = orderItemService.findItemsByOrder_No(Order_No);
			DayTour_ProductBean dayTour_Productbean = productService.findByPrimaryKey(orderItemBean.get(0).getProduct_Id());
			
			List<TravelerBean> travelerList = travelerService.findTravelerByOrder_NO(Order_No);
			System.out.println("dayTour_Productbean"+dayTour_Productbean);
//			System.out.println("後端"+Orderlist);
			System.out.println("orderSellBean"+orderSellBean);
			
			
			
			
			
			model.addAttribute("order", orderSellBean);
			model.addAttribute("travelers", travelerList);
			model.addAttribute("orderItems", orderItemBean);
			model.addAttribute("pBean", dayTour_Productbean);
			model.addAttribute("Order_No", Order_No);
	        session.removeAttribute("Order_No");
			
			return "OrdersItemPage.list";
		}
		
		
		

		
		return "PayFail"; //其實沒寫

	}
	
//	AllInOne all;
//	@RequestMapping(value = "frontEnd/aioCheckOut/aioCheckOutOneTime", method = RequestMethod.POST, produces="text/html;charset=UTF-8")
//	public @ResponseBody String aioCheckOutDevide(AioCheckOutOneTime aio){
//		all = new AllInOne("");
//		System.out.println(aio.getRemark());
//		InvoiceObj invoice = new InvoiceObj();
//		//�������}�o��
//		invoice = null;
//		//�t�Өt�Φۦ沣��
//		aio.setMerchantTradeNo(UUID.randomUUID().toString().replaceAll("-", "").substring(0, 20));
//		Date date = new Date();
//		//�t�ӥi�ۦ�M�w����ɶ�
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
//		aio.setMerchantTradeDate(sdf.format(date));
//		//�q�t��DB���X���ӫ~��T
//		aio.setItemName("item1");
//		aio.setTotalAmount("50");
//		aio.setTradeDesc("item desc");
//		//�t�ӥi�ۦ�M�w�O�_���𼷴�
//		aio.setHoldTradeAMT("0");
//		//��ݳ]�w�I�ڧ����q���^�Ǻ��}
//		aio.setReturnURL("http://www.yahoo.com.jp");
//		try{
//			String html = all.aioCheckOut(aio, invoice);
//			System.out.println(html);
//			return html;
//		} catch(AllPayException e){
//			throw new Error(e.getNewExceptionMessage());
//		}
//	}

}
