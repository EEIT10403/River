package _21_traveling.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import _21_traveling.model.TravelItineraryBean;
import _21_traveling.model.TravelItineraryService;

@Controller
public class TIGetController {
@Autowired	
TravelItineraryService tiService;
	
	@ResponseBody
	@RequestMapping("/_21_/tiget")
	public void getTI(Integer id,HttpServletResponse response) {
		
		response.setCharacterEncoding("UTF-8");
		PrintWriter out=null;
		try {
		   out=response.getWriter();
		   List<TravelItineraryBean> tilist = new ArrayList<TravelItineraryBean>();
		   tilist=tiService.findbyMemberId(id);
		
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
