package _21_traveling.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.sql.Blob;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
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
import _21_traveling.model.getta.GetLatLngFromJSON;

@Controller
public class InsertTAController {
	@Autowired
	TouristAttractionService taService;

	@ResponseBody
	@RequestMapping(value = {"/insertta","/_21_/insertta"})
	public void method(TouristAttractionBean bean, BindingResult bindingResult, @RequestParam MultipartFile img,HttpServletResponse response) {
         response.setCharacterEncoding("UTF-8");
        
		//讀取圖片
			// 將MultipartFile轉成InputStream
			try (
					InputStream is = img.getInputStream();
				 PrintWriter out =response.getWriter();
					) {
				if (!img.isEmpty()) {
				Blob imgBlob = EDMUtils.fileToBlob(is, 10240000);
				bean.setImg(imgBlob);
				}				
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
	
	
	
	@ResponseBody
	@RequestMapping(value = {"/_21_/LoadTALatLng"})
	public void getlatlng(String address,HttpServletRequest request,HttpServletResponse response) {
         response.setCharacterEncoding("UTF-8");
         try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		System.out.println("request編碼:"+request.getCharacterEncoding());
         PrintWriter out=null;
         try {
		 out = response.getWriter();
		 
		 String[] addrArray=address.split("\\s+");
//			System.out.println("String[].length="+addrArray.length);
			String addressURL="";
			//以空白格切割查詢字串
			for(int x=0;x<addrArray.length;x++) {
				addressURL += "%20"  +addrArray[x];
			}
			System.out.println("addressURL="+addressURL);
			String url ="https://maps.googleapis.com/maps/api/place/findplacefromtext/json?input=%20"
						+addressURL
						+"&inputtype=textquery&fields=geometry&key=AIzaSyA1O4vNHfOVtr86ZtznzI4ZeqOBQIM7q5Y";
			
			System.out.println("address="+address);
			String location =GetLatLngFromJSON.readhttp_info(url);
			System.out.println("location14="+location);
			
		     out.print(location);
		   
		 
		 
		 
		 
		 
		 
		 
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			  out.close();
			
		}
 
     	
     	
	
	
	
	
	}
	
	
	
	

}
