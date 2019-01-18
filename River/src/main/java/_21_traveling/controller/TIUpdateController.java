package _21_traveling.controller;

import java.text.SimpleDateFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import _21_traveling.model.TouristAttractionBean;
import _21_traveling.model.TravelItineraryBean;
import _21_traveling.model.TravelItineraryService;
import _21_traveling.model.dao.TravelItineraryDAOHibernate;

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
       
		System.out.println(bean);
		bean = tiService.update(bean);
		System.out.println(bean);
		
		
	}
}
