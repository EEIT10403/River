package _21_traveling.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import _21_traveling.model.TouristAttractionBean;
import _21_traveling.model.TouristAttractionService;
import _21_traveling.model.TravelItineraryBean;
import _21_traveling.model.TravelItineraryService;

@Controller
public class TIGetController {
@Autowired	
TravelItineraryService tiService;
@Autowired
TouristAttractionService taService;

@InitBinder
public void initBinder(WebDataBinder binder)
{
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	dateFormat.setLenient(false);
	binder.registerCustomEditor(java.util.Date.class, new CustomDateEditor(dateFormat, true));
}




	
	@RequestMapping("/_21_/showTI")
	public String getTIList(Integer id,HttpServletResponse response,HttpSession session) {
		
		

		   TravelItineraryBean tibean=tiService.findByPrimaryKey(id);
		   session.setAttribute("tibean", tibean);
		   
		   
		   
		  //單日旅遊行程數目
		  String di= tibean.getDailyitinerary();
		   System.out.println("Dailyitinerary="+di);
		   
		   String[] diarray =di.split(",");
		  //行程順序  
		   String seq = tibean.getSequence();
		   System.out.println("Sequence="+seq);
		  
		   String[] seqary = seq.split(",");
		   List<TouristAttractionBean> taList = new ArrayList<TouristAttractionBean>();
		   
		  for(String x:seqary) {
			  Integer intid =Integer.parseInt(x);
			  TouristAttractionBean tabean=  taService.findByPrimaryKey(intid);
			  taList.add(tabean);
		  }
		  
		   Gson gson = new Gson();  
		   String jsontalist = gson.toJson(taList);
		   String jsondiarray = gson.toJson(diarray);
			
		  System.out.println(taList.toString());
		  session.setAttribute("taList", jsontalist);
		  session.setAttribute("diarray", jsondiarray);
		  
		  
		  
		   
		   
	return "showti.success";
	
	}
	
	
	
	
	@RequestMapping("/_21_/plannewtourist")
	public String updatenewtourist(TravelItineraryBean bean,Model model,HttpSession session) {
		
		
		//新增後回傳有ID(流水號)的行程表
		bean=tiService.addTravelItinerary(bean);
		session.setAttribute("tibean", bean);
		System.out.println(bean);
		
		
		return "insertti.success";
		

		
	}
	
	
//	@RequestMapping("/_21_/newtourist")
//	public String insertnewtourist(TravelItineraryBean bean,Model model) {
//		
//		
//		//新增後回傳有ID(流水號)的行程表
//        bean=tiService.addTravelItinerary(bean);
//		model.addAttribute("tibean", bean);
//		System.out.println(bean);
//		
//		
//		return "insertti.success";
//		
//
//		
//	}
	
	
	@ResponseBody
	@RequestMapping("/_21_/tiget")
	public void getTI(@RequestParam("id") Integer memberid,HttpServletResponse response) {
		
		response.setCharacterEncoding("UTF-8");
		PrintWriter out=null;
		try {
		   out=response.getWriter();
		   List<TravelItineraryBean> tilist = new ArrayList<TravelItineraryBean>();
		   tilist=tiService.findbyMemberId(memberid);
		
		   System.out.println(tilist);
		   
		   
		 //list转换为json
		   Gson gson = new Gson();  
		
		   String jsonlist = gson.toJson(tilist);
		   
		   out.print(jsonlist);
		   
		   
		}	 catch (IOException e) {
			e.printStackTrace();
		}finally {
			out.close();
		}
	
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
