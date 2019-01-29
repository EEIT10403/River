package _27_Order.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.mail.MailSender;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import DaytourProduct.misc.PrimitiveNumberEditor;
import DaytourProduct.model.DayTour_ProductBean;
import DaytourProduct.model.ProductService;
import _11.model.MemberBean;
import _11.model.MemberService;
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
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private MailSender mailSender;
	@Autowired
	private JavaMailSender mailSenderObj;


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
	
	@RequestMapping("/export.do")
	     public @ResponseBody String export(HttpServletResponse response){    
	         response.setContentType("application/binary;charset=UTF-8");
	        try{
	            ServletOutputStream out=response.getOutputStream();
	             String fileName=new String(("SalesReport "+ new SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date())).getBytes(),"UTF-8");
	            response.setHeader("Content-disposition", "attachment; filename=" + fileName + ".xls");
	            String[] titles = { "Order_No", "Product_Id", "Ticket_type", "Prod_Name","Quantity","UnitPrice","Total_Amount" }; 
	            orderItemService.export(titles, out);
	            return "product.report";
	        } catch(Exception e){
	             e.printStackTrace();
	            return "product.report";
	         }
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
		
		
		if(RtnCode!=1) {  //RtnCode有進來, 改item狀態
			return "PaymentError";
			}
		
		String member_Id = (String) session.getAttribute("member_Id");
        String Order_No = (String) session.getAttribute("Order_No");
		System.out.println("有進/Order/PayResult" + Order_No); // 測試有沒有進來
		System.out.println("有進/Order/PayResult" + member_Id); // 測試有沒有進來
		System.out.println("交易成功代碼="+RtnCode);
		
		
		
			
			List<OrderItemBean> oBeans = orderItemService.findItemsByOrder_No(Order_No);
			
			
		if(RtnCode==1) {  //RtnCode有進來, 改item狀態
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
			
//寄無標籤平信
//			SimpleMailMessage emailObj = new SimpleMailMessage();
//			emailObj.setTo("qool0636@gmail.com");
//			emailObj.setSubject("百川旅遊訂購明細"+orderSellBean.getOrder_No());
//			emailObj.setText("衷心感謝");
//
//			mailSender.send(emailObj);
			
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
			String OrderDate = df.format(orderSellBean.getOrderDate());
			
			String mailContent="<div style=\"margin:5% 10%\"><p><br></p><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"color: rgb(34, 34, 34); font-family: Roboto, RobotoDraft, Helvetica, Arial, sans-serif; font-size: small; background-color: rgb(255, 255, 255);\"><tbody><tr><td style=\"margin: 0px;\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><tbody><tr><td style=\"font-family: &quot;Microsoft JhengHei&quot;, Arial, &quot;LiHei Pro Medium&quot;, sans-serif; margin: 0px; line-height: 23px; font-size: 15px; padding-bottom: 10px;\"><span style=\"color: rgb(0, 0, 0);\">親愛的顧客您好：</span></td></tr><tr><td style=\"font-family: &quot;Microsoft JhengHei&quot;, Arial, &quot;LiHei Pro Medium&quot;, sans-serif; margin: 0px; font-size: 15px; line-height: 23px; padding-bottom: 10px;\"><span style=\"color: rgb(0, 0, 0);\">謝謝您訂購百川旅遊的商品，付款作業已經完成<br>以下為本次訂單明細與相關資訊，敬請參閱</span></td></tr></tbody></table></td></tr><tr><td style=\"margin: 0px;\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><tbody><tr><td style=\"font-family: &quot;Microsoft JhengHei&quot;, Arial, &quot;LiHei Pro Medium&quot;, sans-serif; margin: 0px; line-height: 24px; font-size: 15px;\"><span style=\"color: rgb(181, 99, 8);\">訂單編號："+orderSellBean.getOrder_No()+"</span></td></tr><tr><td style=\"font-family: &quot;Microsoft JhengHei&quot;, Arial, &quot;LiHei Pro Medium&quot;, sans-serif; margin: 0px; line-height: 24px; font-size: 15px;\"><p><span style=\"color: rgb(0, 0, 0);\">訂購日期："+OrderDate+"</span></p><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"font-family: Roboto, RobotoDraft, Helvetica, Arial, sans-serif; font-size: small; background-color: rgb(255, 255, 255);\"><tbody><tr><td style=\"font-family: &quot;Microsoft JhengHei&quot;, Arial, &quot;LiHei Pro Medium&quot;, sans-serif; margin: 0px; line-height: 22px; font-size: 15px; padding-bottom: 5px;\"><span style=\"color: rgb(0, 0, 0);\"><img valign=\"bottom\" src=\"https://ci3.googleusercontent.com/proxy/3vq3MtryvVWH5WxtQ8qfVgAfhjJnrhOTv5NH9QmlRxM85KzP_9X5eNN-HkRp72MD3REOf8AzkRb9Vk_rRqTNYRLKNJCicJedfsVc1PCx4GgKld1SH7wlF7tI1UwY32Y=s0-d-e1-ft#https://member.eztravel.com.tw/mweb/member/assets/images/icons/scamAlert.png\" class=\"CToWUd\" style=\"vertical-align: bottom;\">&nbsp;防詐騙提醒說明</span></td></tr><tr><td style=\"font-family: &quot;Microsoft JhengHei&quot;, Arial, &quot;LiHei Pro Medium&quot;, sans-serif; margin: 0px; line-height: 24px; font-size: 13px; background-color: rgb(250, 250, 250); padding: 12px;\"><span style=\"color: rgb(0, 0, 0);\">我們不會以任何原因，請求顧客操作ATM作帳款變更，<wbr>或索取信用卡資料，若有疑慮請洽客服專線。</span></td></tr></tbody></table><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"font-family: Roboto, RobotoDraft, Helvetica, Arial, sans-serif; font-size: small; background-color: rgb(255, 255, 255);\"><tbody><tr><td style=\"font-family: &quot;Microsoft JhengHei&quot;, Arial, &quot;LiHei Pro Medium&quot;, sans-serif; margin: 0px; font-size: 20px; padding-bottom: 6px; border-bottom: 1px solid rgb(204, 204, 204);\"><span style=\"font-weight: bold; color: rgb(57, 123, 33);\">訂購明細</span></td></tr><tr><td style=\"margin: 0px;\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><tbody><tr><td style=\"margin: 0px; padding-top: 20px;\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><tbody><tr><td style=\"font-family: &quot;Microsoft JhengHei&quot;, Arial, &quot;LiHei Pro Medium&quot;, sans-serif; margin: 0px; font-size: 15px; color: rgb(0, 102, 0);\"><br></td></tr></tbody></table></td></tr><tr><td style=\"font-family: &quot;Microsoft JhengHei&quot;, Arial, &quot;LiHei Pro Medium&quot;, sans-serif; margin: 0px; font-size: 18px; padding-top: 4px;\"><br></td></tr></tbody></table></td></tr></tbody></table><table class=\"table table-hover table-bordered\" style=\"margin: 0px 0px 1rem; padding: 0px; width: 941.6px; background-color: rgb(255, 255, 255); border-color: rgb(233, 236, 239); color: rgb(102, 102, 102); font-family: Arial, sans-serif;\"><thead style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background-color: rgb(59, 232, 176);\"><td style=\"margin: 0px; padding: 0.75rem; border-top: 1px solid rgb(233, 236, 239); border-right-color: rgb(233, 236, 239); border-bottom-color: rgb(233, 236, 239); border-left-color: rgb(233, 236, 239);\">商品名稱</td></tr></thead><tbody style=\"margin: 0px; padding: 0px;\"><tr class=\"table-Default\" style=\"margin: 0px; padding: 0px;\"><td style=\"margin: 0px; padding: 0.75rem; border-color: rgb(233, 236, 239);\">"+orderSellBean.getProd_Name()+"<br></td></tr></tbody></table><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"font-family: Roboto, RobotoDraft, Helvetica, Arial, sans-serif; font-size: small; background-color: rgb(255, 255, 255);\"><tbody><tr><td style=\"margin: 0px; padding-top: 35px;\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><tbody><tr><td style=\"margin: 0px;\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><tbody><tr><td style=\"margin: 0px; padding-top: 20px; border-spacing: 0px;\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><tbody><tr><td style=\"font-family: &quot;Microsoft JhengHei&quot;, Arial, &quot;LiHei Pro Medium&quot;, sans-serif; margin: 0px; border: 1px solid rgb(171, 234, 69); background-color: rgb(242, 250, 236); font-size: 15px; padding: 11px 17px;\">訂單總金額&nbsp;<span style=\"font-size: 18px; color: rgb(255, 102, 0);\">"+orderSellBean.getTotal_Amount()+"</span>&nbsp;元</td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></td></tr><tr><td style=\"margin: 0px; padding-top: 35px;\"></td></tr></tbody></table><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"font-family: Roboto, RobotoDraft, Helvetica, Arial, sans-serif; font-size: small; background-color: rgb(255, 255, 255);\"><tbody><tr><td style=\"font-family: &quot;Microsoft JhengHei&quot;, Arial, &quot;LiHei Pro Medium&quot;, sans-serif; margin: 0px; font-size: 20px; padding-bottom: 6px; border-bottom: 1px solid rgb(204, 204, 204);\"><span style=\"color: rgb(57, 123, 33);\">服務洽詢</span></td></tr><tr><td style=\"margin: 0px;\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><tbody><tr><td style=\"font-family: &quot;Microsoft JhengHei&quot;, Arial, &quot;LiHei Pro Medium&quot;, sans-serif; margin: 0px; padding-top: 10px; padding-bottom: 10px;\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><tbody><tr><td style=\"font-family: Roboto, RobotoDraft, Helvetica, Arial, sans-serif; margin: 0px; padding-bottom: 2px; padding-top: 2px;\"><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><tbody><tr><td valign=\"top\" align=\"center\" style=\"font-family: &quot;Microsoft JhengHei&quot;, Arial, &quot;LiHei Pro Medium&quot;, sans-serif; margin: 0px; color: rgb(126, 221, 49); width: 17px; font-size: 20px; line-height: 24px;\">•</td><td style=\"font-family: &quot;Microsoft JhengHei&quot;, Arial, &quot;LiHei Pro Medium&quot;, sans-serif; margin: 0px; font-size: 15px; line-height: 24px;\">客服人員：白三</td></tr></tbody></table></td></tr><tr><td style=\"margin: 0px; font-size: 15px; line-height: 27px; padding-left: 17px;\">聯絡電話：02-6663366 分機 111</td></tr><tr><td style=\"margin: 0px; font-size: 15px; line-height: 27px; padding-left: 17px;\">傳真：02-26355555&nbsp;</td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table><p><br></p><p><br></p><p><br></p></td></tr></tbody></table></td></tr></tbody></table><br></div>";
			MemberBean mBean= memberService.findById(member_Id);
			String mailTo = mBean.getemail();
			
			mailSenderObj.send(new MimeMessagePreparator() {
				            public void prepare(MimeMessage mimeMessage) throws Exception {
				                MimeMessageHelper mimeMsgHelperObj = new MimeMessageHelper(mimeMessage, true, "UTF-8");             
				                mimeMsgHelperObj.setTo(mailTo);
				                mimeMsgHelperObj.setText(mailContent,true);
				                mimeMsgHelperObj.setSubject("百川旅遊訂購明細"+orderSellBean.getOrder_No());
				 
				            }
			});
			
			
			
			
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
