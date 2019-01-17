package _Comment.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import _27_Order.model.OrderSellBean;
import _27_Order.model.OrderSellService;
import _Comment.model.CommentBean;
import _Comment.model.CommentService;
@Controller
public class CommentController {
	@Autowired
	private CommentService commentService;
	@Autowired
	private OrderSellService orderSellService;

	@RequestMapping(path= {"/Comment/IntoComment"})
	public String method(Model model,HttpSession session) {
		
		String member_Id = (String) session.getAttribute("member_Id");
		System.out.println("有近來/Comment/IntoComment="+member_Id);
		
		
		List<OrderSellBean> list1 = orderSellService.findOrdersByMemberId(member_Id);
		List<OrderSellBean> list2 = new ArrayList<OrderSellBean>() ; 
		for(OrderSellBean obean :list1) {
			
			String travelDate = obean.getTravelDate();
			
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
			//获取Calendar实例
			Calendar currentTime = Calendar.getInstance();
			Calendar compareTime = Calendar.getInstance();
		    try {
		    	//把字符串转成日期类型
				compareTime.setTime(df.parse(travelDate));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		    //利用Calendar的方法比较大小
		    if (currentTime.compareTo(compareTime) > 0) {
		    	
//		    	System.out.println("travelDate已經過了");
				list2.add(obean);
			}else{
//				System.out.println("travelDate還沒到");
				
			}
			
		}
		
		model.addAttribute("CanCommentList", list2);
		 return "intoComment.page" ;
	
	}
	

	@RequestMapping(path= {"/_Comment/insert"})
	public String insertComment(String Order_No,String Prod_Name,String Member_Id,
			String Chinese_Name, String Content, Model model,HttpSession session) {
		
		String member_Id = (String)session.getAttribute("member_Id");
		System.out.println("有進/_Comment/insert");
		
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		String CommentDate = df.format(new java.util.Date());
		
		System.out.println("現在時間=" + CommentDate);
		
		CommentBean cbean = new CommentBean();
		try {
			cbean.setComment_Time(df.parse(CommentDate));
		} catch (ParseException e) {
			System.out.println("CommentDate沒有轉換成功");
			e.printStackTrace();
		}
		cbean.setContent(Content);
		cbean.setMember_Id(member_Id);
		cbean.setOrder_No(Order_No); 
		cbean.setProd_Name(Prod_Name);
		cbean.setChinese_Name(Chinese_Name);
		
		
		
		commentService.insertOneComment(cbean);
		
		return "intoComment.page";
	}
	
	
//結果沒用
	@RequestMapping(
			value="/_Comment/show",
			produces={"application/json; charset=UTF-8"}
	)
	@ResponseBody
	public String showComment(String Prod_Name,Model model,HttpSession session) {
		System.out.println("有進/_Comment/show"+Prod_Name);
		String member_Id = (String)session.getAttribute("member_Id");
		System.out.println("有進/_Comment/show");
		
		List<CommentBean> list =  commentService.findByProd_Name(Prod_Name);
		
		JsonArray array = new JsonArray();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
//	    model.addAttribute("commentList", list);
		for(CommentBean bean :list) {
			JsonObject comment = new JsonObject();
			comment.addProperty("Prod_Name", bean.getProd_Name());
			comment.addProperty("Chinese_Name", bean.getChinese_Name());
			comment.addProperty("Content", bean.getContent());
			comment.addProperty("Member_Id", bean.getMember_Id());
			comment.addProperty("Order_No", bean.getOrder_No());
			comment.addProperty("Prod_Name", df.format(bean.getComment_Time()));
			
			array.add(comment);
		}
	    
	    
		return array.toString();
	}
	
}
