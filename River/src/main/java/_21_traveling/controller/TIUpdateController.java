package _21_traveling.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import _21_traveling.model.TouristAttractionBean;
import _21_traveling.model.TravelItineraryBean;
import _21_traveling.model.TravelItineraryService;
import _21_traveling.model.dao.TravelItineraryDAOHibernate;
import _21_traveling.model.getta.GetTransferTime;

@Controller
public class TIUpdateController {
	@InitBinder
	public void initBinder(WebDataBinder binder)
	{
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		dateFormat.setLenient(false);
		binder.registerCustomEditor(java.util.Date.class, new CustomDateEditor(dateFormat, true));
	}
	@Autowired
	TravelItineraryService tiService;

	@RequestMapping("/_21_/updateTI")
	@ResponseBody
	public void updateTI(TravelItineraryBean bean) {
		bean =tiService.update(bean);
		System.out.println(bean);

	}
	
	@RequestMapping("/_21_/getdad")
	@ResponseBody
	public void getDurationAndDistance(String[] ti,String[] mode,HttpServletResponse response) {
		response.setCharacterEncoding("UTF-8");
		PrintWriter out=null;
		try {
		out = response.getWriter();
		
		System.out.println("ti="+ti.length);
		System.out.println("mode="+mode.length);
		List<String> list =new ArrayList<>();
		
		for(int x =0;x<mode.length;x++) {
			String from="";
			String to="";
			String[] fromarray=ti[x].split("\\s+");
			String[] toarray =ti[x+1].split("\\s+");
			for(int y=0;y<fromarray.length;y++) {
				from += ("%20"  +fromarray[y]);
			}
			for(int y=0;y<toarray.length;y++) {
				to += ("%20"  +toarray[y]);
			}
			
			
			String url="https://maps.googleapis.com/maps/api/directions/json?origin="
					+ from+ "&destination="
					+ to+ "&mode="
					+ mode[x]+ "&key=AIzaSyA1O4vNHfOVtr86ZtznzI4ZeqOBQIM7q5Y";
			System.out.println("url="+url);
			String result = GetTransferTime.readhttp_info(url);
			
			list.add(result);
		}
		
		 Gson gson = new Gson();  
		   String jsonlist = gson.toJson(list);
		   System.out.println("list="+jsonlist);
		
		out.print(jsonlist);
		
		
		
		
		} catch (IOException e) {
			e.printStackTrace();
		}finally {
			out.close();
		}
		
	}
	
	
//	@RequestMapping("/_21_/changetravelmode")
//	@ResponseBody
//	public void changeTravelMode(String from,String to,String mode,HttpServletResponse response) {
//		response.setCharacterEncoding("UTF-8");
//		PrintWriter out=null;
//		try {
//		out = response.getWriter();
//		
//	System.out.println("from="+from);
//	System.out.println("to="+to);
//	System.out.println("mode="+mode);
//	
//		
//			String fromta="";
//			String tota="";
//			String[] fromarray=from.split("\\s+");
//			String[] toarray =to.split("\\s+");
//			for(int y=0;y<fromarray.length;y++) {
//				from += ("%20"  +fromarray[y]);
//			}
//			for(int y=0;y<toarray.length;y++) {
//				to += ("%20"  +toarray[y]);
//			}
////			if(mode=="WALKING") {
////				mode="walking";
////			}else if(mode=="DRIVING"){
////				mode="driving";
////			}else if(mode=="TRANSIT") {
////				mode="transit";
////			}
//			
//			String url="https://maps.googleapis.com/maps/api/directions/json?origin="
//					+ fromta+ "&destination="
//					+ tota+ "&mode="
//					+ mode.toLowerCase()+ "&key=AIzaSyA1O4vNHfOVtr86ZtznzI4ZeqOBQIM7q5Y";
//			System.out.println("url="+url);
//			String result = GetTransferTime.readhttp_info(url);
//			
//			System.out.println("result="+result);
//		
//		
////		 Gson gson = new Gson();  
////		   String jsonlist = gson.toJson(list);
////		   System.out.println("list="+jsonlist);
//		
////		out.print(jsonlist);
//		
//		
//		
//		
//		} catch (IOException e) {
//			e.printStackTrace();
//		}finally {
//			out.close();
//		}
//		
//	}
	
		
	
}
