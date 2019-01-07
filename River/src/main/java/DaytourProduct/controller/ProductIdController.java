package DaytourProduct.controller;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import DaytourProduct.model.DayTour_ProductBean;
import DaytourProduct.model.ProductService;


@Controller
@ResponseBody
public class ProductIdController {
	@Autowired
	private ProductService productService;
	
//	private OutputStream os = null;
//	private InputStream is = null;
	
	@RequestMapping(
			value="/pages/products.view",
			produces={"application/json; charset=UTF-8"}
	)
	public String method(@RequestParam(name="Product_Id", required=false) String temp) throws SQLException {
		System.out.println("ProductIdServlet:"+temp);
//接收資料	
//驗證資料不是null
		JsonArray array = new JsonArray();
		if(temp==null || temp.trim().length()==0) {
			JsonObject obj = new JsonObject();
			obj.addProperty("text", "Product_Id是必要欄位");
			obj.addProperty("hasMoreData", false);
			array.add(obj);
		}
		
//轉換資料		
//		int id = 0;		
//		if(temp!=null && temp.trim().length()!=0) {
//			try {
//				id = Integer.parseInt(temp);
//			} catch (NumberFormatException e) {
//				e.printStackTrace();
//				JsonObject obj = new JsonObject();
//				obj.addProperty("text", "ID必需是數字");
//				obj.addProperty("hasMoreData", false);
//				array.add(obj);
//			}
//		}
		
		if(array!=null && array.size()!=0) {
			return array.toString();
		}
//呼叫model
	    DayTour_ProductBean bean = new DayTour_ProductBean();
		bean.setProduct_Id(temp);
		List<DayTour_ProductBean> result = productService.select(bean);

		if(result==null || result.isEmpty()) {
			JsonObject obj = new JsonObject();
			obj.addProperty("text", "產品不存在");
			obj.addProperty("hasMoreData", false);
			array.add(obj);
		} else {
			JsonObject obj = new JsonObject();
			obj.addProperty("text", "產品存在,請修改後儲存");
			obj.addProperty("hasMoreData", true);
			array.add(obj);
			
			DayTour_ProductBean data = result.get(0);
			
			//要如何拉出圖片 
//			is = data.getMain_Image().getBinaryStream();
//			int len = 0;
//			byte[] bytes = new byte[8192];
//			try {
//				while ((len = is.read(bytes)) != -1) {
//					os.write(bytes, 0, len);
//				}
//			} catch (IOException e) {
//				System.out.println("blob沒轉成圖");
//				e.printStackTrace();
//			}
			
			JsonObject product = new JsonObject();
			product.addProperty("Product_Id", data.getProduct_Id());
			product.addProperty("Prod_Name", data.getProd_Name());
			product.addProperty("Features", data.getFeatures());
			product.addProperty("Ticket_type_1", data.getTicket_type_1());
			product.addProperty("UnitPrice_1", data.getUnitPrice_1());
			product.addProperty("Ticket_type_2", data.getTicket_type_2());
			product.addProperty("UnitPrice_2", data.getUnitPrice_2());
			product.addProperty("Ticket_type_3", data.getTicket_type_3());
			product.addProperty("UnitPrice_3", data.getUnitPrice_3());
			product.addProperty("Ticket_type_4", data.getTicket_type_4());
			product.addProperty("UnitPrice_4", data.getUnitPrice_4());
			product.addProperty("Ticket_type_4", data.getTicket_type_4());
			product.addProperty("Discount_Rate", data.getDiscount_Rate());
			product.addProperty("Acceptable_Discount_Rate", data.getAcceptable_Discount_Rate());
			product.addProperty("Region", data.getRegion());
			product.addProperty("Country", data.getCountry());
			product.addProperty("Detail", data.getDetail());
			product.addProperty("Rights", data.getRights());
			
			array.add(product);
		}

//根據model執行結果顯示View
		return array.toString();
	}
}
