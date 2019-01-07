package sabre.controller;

import java.text.SimpleDateFormat;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import sabre.model.FormBean;

@Controller
@SessionAttributes(names= {"formBean"})

public class FormController {
	
	@InitBinder
	public void initBinder(WebDataBinder binder)
	{
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		dateFormat.setLenient(false);
		binder.registerCustomEditor(java.util.Date.class, new CustomDateEditor(dateFormat, true));
	}
	
	
	
	@RequestMapping(path= {"/form.controller"},method=RequestMethod.POST)
	public String saveForm(FormBean formBean,Model model,BindingResult bindingResult) {
		System.out.println("起始地 ="+formBean.getZt_country());
		System.out.println("目的地 ="+formBean.getZt_country02());
		System.out.println("出發日 ="+formBean.getGodate());
		System.out.println("回程日 ="+formBean.getBackdate());
		System.out.println("人數 ="+formBean.getPeople());
		
		
		model.addAttribute(formBean);
		
		return "form.success";
	}
	
	
	
 
}