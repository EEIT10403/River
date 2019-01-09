package _21_traveling.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;


import org.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import _21_traveling.model.TouristAttractionBean;
import _21_traveling.model.TouristAttractionService;
import _21_traveling.model.dao.TouristAttractionDAOHibernate;

@Controller
public class SearchTAController {
	@Autowired
	private TouristAttractionService touristAttractionService;
	@Autowired
	private TouristAttractionDAOHibernate touristAttractionDAOHibernate;

	@ResponseBody
	@RequestMapping(value = { "/_21_/searchta" })
	public void method(Model model, @RequestParam String touristarea, @RequestParam String address,
			HttpServletResponse response) {
		System.out.println("touristarea=" + touristarea);
		System.out.println("address=" + address);
		response.setCharacterEncoding("UTF-8");
		try (PrintWriter out = response.getWriter();) {
//			Map<String, String> result = new HashMap<String, String>();

//			System.out.println(touristAttractionDAOHibernate.select(1));
//			System.out.println(touristAttractionDAOHibernate.findbyaddress("addresstest1"));
//			System.out.println(touristAttractionDAOHibernate.findbyaddress("%澳洲%"));
//			System.out.println(touristAttractionDAOHibernate.findbyAddrTA("%澳洲%","台灣"));

			// 搜尋景點 List

			List<TouristAttractionBean> talist = touristAttractionDAOHibernate.findbyAddrTA("%" + address + "%",
					"%" + touristarea + "%");

//			int len = talist.size();

//	    	for(int x=0;x<len;x++) {
//	    		
//	    		int id = talist.get(x).getId();
//	    		Blob img = talist.get(x).getImg();
//	    		
//	    		result.put(id, img);
//		
//	    	}

			System.out.println(talist);
	
			JSONArray array = new JSONArray(talist);
            
			out.print(array.toString());

		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	@ResponseBody
	@RequestMapping("/getTAImage")
	public void method2(@RequestParam Integer id, HttpServletResponse response) {

		OutputStream os = null;
		InputStream is = null;
		try {
			TouristAttractionBean tBean = touristAttractionDAOHibernate.select(id);
			is = tBean.getImg().getBinaryStream();

			// 由圖片檔的檔名來得到檔案的MIME型態

			// 設定輸出資料的型態
			response.setContentType("image/jpeg");
			// 取得能寫出非文字資料的OutputStream物件
			os = response.getOutputStream();
			// 如果圖片的來源有問題，就送回預設圖片(/images/NoImage.jpg)
			if (is == null) {
//		is = getServletContext().getResourceAsStream(
//					"/images/NoImage.jpg");
			}
			int len = 0;
			byte[] bytes = new byte[8192];
			while ((len = is.read(bytes)) != -1) {
				os.write(bytes, 0, len);
			}
		} catch (SQLException | IOException e) {
			e.printStackTrace();
		}

	}

}
