package _21_traveling.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.SQLException;

import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import _21_traveling.misc.EDMUtils;
import _21_traveling.model.TouristAttractionBean;
import _21_traveling.model.TouristAttractionService;
import _21_traveling.model.dao.TouristAttractionDAOHibernate;

@Controller
public class InsertTAController {
	@Autowired
	TouristAttractionService taService;

	@ResponseBody
	@RequestMapping(value = {"/insertta","/_21_/insertta"})
	public void method(TouristAttractionBean bean, BindingResult bindingResult, @RequestParam MultipartFile img,HttpServletResponse response) {
         response.setCharacterEncoding("UTF-8");
		
		//讀取圖片
		if (!img.isEmpty()) {
			// 將MultipartFile轉成InputStream
			try (InputStream is = img.getInputStream();
				 PrintWriter out =response.getWriter();
					) {
				Blob imgBlob = EDMUtils.fileToBlob(is, 10240000);
				bean.setImg(imgBlob);
				// 新增資料
				taService.addTouristAttraction(bean);
				System.out.println(bean);
			JSONObject result=new JSONObject();
				result.append("id", bean.getId());
				result.append("address", bean.getAddress());
				result.append("touristarea", bean.getTouristarea());
				System.out.println(result);
				out.write(result.toString());
			} catch (IOException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		
		

	}

}
