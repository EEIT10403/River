package _21_traveling.controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import _21_traveling.model.TouristAttractionBean;
import _21_traveling.model.TouristAttractionService;
import _21_traveling.model.dao.TouristAttractionDAOHibernate;

@Controller
public class FirstSelectController {

	@Autowired
	private TouristAttractionService taService;
	
	@ResponseBody
	@RequestMapping(value = { "/_21_/firstselect" })
	public void method(HttpServletResponse response){
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = null;
		try{
			 out = response.getWriter();
		
		
		TouristAttractionBean bean1=taService.findByPrimaryKey(7);
		TouristAttractionBean bean2=taService.findByPrimaryKey(8);
		TouristAttractionBean bean3=taService.findByPrimaryKey(9);
		TouristAttractionBean bean4=taService.findByPrimaryKey(10);
		List<TouristAttractionBean> list = new ArrayList();
		list.add(bean1);
		list.add(bean2);
		list.add(bean3);
		list.add(bean4);
		
		Gson gson = new Gson();
		String result = gson.toJson(list, ArrayList.class);
		System.out.println(result);
		
		out.write(result);
		
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			out.close();
			
		}
		
		
	}
	
}
