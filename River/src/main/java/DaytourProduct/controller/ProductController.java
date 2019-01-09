package DaytourProduct.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import DaytourProduct.misc.PrimitiveNumberEditor;
import DaytourProduct.misc.SystemUtils;
import DaytourProduct.model.DayTour_ProductBean;
import DaytourProduct.model.ProductService;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;

	@InitBinder
	public void registerPropertyEditor(WebDataBinder webDataBinder) {
		webDataBinder.registerCustomEditor(java.util.Date.class,
				new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));

		webDataBinder.registerCustomEditor(int.class, new PrimitiveNumberEditor(java.lang.Integer.class, true));

		webDataBinder.registerCustomEditor(double.class, new PrimitiveNumberEditor(java.lang.Double.class, true));
	}

	long sizeInBytes = 0;
	InputStream is = null;

	
	
	@RequestMapping(value="/DisplayAll",
			produces={"application/json; charset=UTF-8"})
	public void DisplayAll(Model model, String region, HttpSession session,
			HttpServletRequest request,
			HttpServletResponse response)
			throws IOException, ServletException, SQLException {

		System.out.println("SelectAll有進來"); // 測試id有沒有進來

		DayTour_ProductBean fakebean  = null;
			List<DayTour_ProductBean> result = productService.select(fakebean);
			System.out.println("bean=" + result);
			JsonArray array = new JsonArray();
			
			for(int n=0 ; n<result.size();n++) {
//				System.out.println(result.get(n));
				DayTour_ProductBean bean = result.get(n);
				JsonObject obj = new JsonObject();
				obj.addProperty("product_Id", bean.getProduct_Id());
				obj.addProperty("prod_Name", bean.getProd_Name());
//				System.out.println("媽我在這"+obj.get("prod_Name"));
				obj.addProperty("features", bean.getFeatures());
				obj.addProperty("ticket_type_1", bean.getTicket_type_1());
				obj.addProperty("unitPrice_1", bean.getUnitPrice_1());
				array.add(obj);
			}
			response.setCharacterEncoding("UTF-8");
			PrintWriter out = response.getWriter();
			out.print(array.toString());
//			model.addAttribute("select", result);
//不知道會不會用到	session.setAttribute("bean", result);
		


	}
	@RequestMapping(value="/DisplayByRegion",
			produces={"application/json; charset=UTF-8"})
	public void DisplayByRegion(Model model, String region, HttpSession session,
			HttpServletRequest request,
			HttpServletResponse response)
			throws IOException, ServletException, SQLException {

//		System.out.println("DisplayByRegion有進來"); // 測試 
//		System.out.println(region); // 測試region有沒有進來
		
			List<DayTour_ProductBean> result = productService.findProductByRegion(region);
			System.out.println("bean in DisplayByRegion=" + result);
			JsonArray array = new JsonArray();
			
			for(int n=0 ; n<result.size();n++) {
//				System.out.println(result.get(n));
				DayTour_ProductBean bean = result.get(n);
				JsonObject obj = new JsonObject();
				obj.addProperty("product_Id", bean.getProduct_Id());
				obj.addProperty("prod_Name", bean.getProd_Name());
//				System.out.println("媽我在這"+obj.get("prod_Name"));
				obj.addProperty("features", bean.getFeatures());
				obj.addProperty("ticket_type_1", bean.getTicket_type_1());
				obj.addProperty("unitPrice_1", bean.getUnitPrice_1());
				array.add(obj);
			}
			response.setCharacterEncoding("UTF-8");
			PrintWriter out = response.getWriter();
			out.print(array.toString());
//			model.addAttribute("select", result);
//不知道會不會用到	session.setAttribute("bean", result);
		


	}

	@RequestMapping("/pages/product.controller")
	public String BackFunction(@RequestParam(value = "Main_Image", required = false) MultipartFile file, Model model,
			String prodaction, DayTour_ProductBean bean, BindingResult bindingResults)
			throws IOException, ServletException {
//接收資料
//轉換資料
		System.out.println(file);
		System.out.println(bean);
		// 先處理圖片檔案
		if (!file.isEmpty()) {
			// 获取文件类型
			String contentType = file.getContentType();
			if (!contentType.equals("")) {
				// 可以对文件类型进行检查
			}
			String name = file.getName();
			System.out.println(name);

			String originFileName = file.getOriginalFilename();
//			System.out.println(originFileName);
//			String extension = originFileName.substring(originFileName.lastIndexOf("."));
//			System.out.println(extension);

			if (originFileName != null && originFileName.trim().length() > 0) {
				sizeInBytes = file.getSize();
				System.out.println("sizeInBytes = " + sizeInBytes);
				try {
					is = file.getInputStream();
					System.out.println("is = " + is);
				} catch (IOException e) {
					System.out.println("file變成is失敗");
					e.printStackTrace();
				}
			}

			try {
				// File 轉成能用的Blob
				Blob blob = SystemUtils.fileToBlob(is, sizeInBytes);
				System.out.println("blob = " + blob);
				bean.setMain_Image(blob);
				System.out.println("新的bean = " + bean);
			} catch (IOException | SQLException e) {
				System.out.println("file變成Blob失敗");
				e.printStackTrace();
			}
		}
//處理壞掉的資訊		
		Map<String, String> errors = new HashMap<>();
		model.addAttribute("errors", errors);
//沒用,先留著而已
		if (bindingResults != null && bindingResults.hasFieldErrors()) {
			if (bindingResults.hasFieldErrors("id")) {
				errors.put("id", "id must be an integer");
			}
//			if (bindingResults.hasFieldErrors("price")) {
//				errors.put("price", "price must be a number");
//			}
//			if (bindingResults.hasFieldErrors("make")) {
//				errors.put("make", "make must be a date of YYYY-MM-DD");
//			}
//			if (bindingResults.hasFieldErrors("expire")) {
//				errors.put("expire", "expire must be an integer");
//			}
		}

//驗證資料
		if ("Insert".equals(prodaction) || "Update".equals(prodaction) || "Delete".equals(prodaction)) {
			if (bean == null || bean.getProduct_Id() == null) {
				errors.put("id", "Please enter id for " + prodaction);
			}
		}

		if (errors != null && !errors.isEmpty()) {
			return "product.errors";
		}

//呼叫model
//呼叫view
		if ("Select".equals(prodaction)) {
			List<DayTour_ProductBean> result = productService.select(bean);
			model.addAttribute("select", result);
			return "product.select";

		} else if ("Insert".equals(prodaction)) {
			DayTour_ProductBean result = productService.insert(bean);
			if (result == null) {
				errors.put("action", "insert failed");
			} else {
				model.addAttribute("insert", result);
			}
			return "product.errors";

		} else if ("Update".equals(prodaction)) {
			DayTour_ProductBean result = productService.update(bean);
			if (result == null) {
				errors.put("action", "update failed");
			} else {
				model.addAttribute("insert", result);
			
			}
			return "product.errors";

		} else if ("Delete".equals(prodaction)) {
			boolean result = productService.delete(bean);
			model.addAttribute("delete", result);
			return "product.errors";

		} else {
			errors.put("action", "unknown action: " + prodaction);
			return "product.errors";
		}
	}

	@RequestMapping("/DaytourProduct/Display")
	public String DisplayProduct(Model model, String Product_Id, HttpSession session)
			throws IOException, ServletException, SQLException {

//		System.out.println(Product_Id); // 測試id有沒有進來

		if (Product_Id != null) {

			DayTour_ProductBean result = productService.findByPrimaryKey(Product_Id);
			System.out.println("bean=" + result);
			model.addAttribute("bean", result);
//不知道會不會用到	session.setAttribute("bean", result);

			return "product.select";

		}
		return "product.select";

	}
	
	
	@RequestMapping("/DaytourProduct/DateAndTicket")
	public String ChooseTicketType(Model model, String Product_Id, HttpSession session)
			throws IOException, ServletException, SQLException {

		System.out.println("有近DateAndTicket"+Product_Id); // 測試id有沒有進來

		if (Product_Id != null) {

			DayTour_ProductBean result = productService.findByPrimaryKey(Product_Id);
			System.out.println("DateAndTicket bean=" + result);
			model.addAttribute("bean", result);
//不知道會不會用到	session.setAttribute("bean", result);

			return "product.tickettype";

		}
		return "product.select";

	}
	

	@RequestMapping(value = "getProductMainImage", method = RequestMethod.GET)
	public void getImages(@RequestParam(name = "Product_Id", required = false) String guid, HttpServletRequest request,
			HttpServletResponse response) {
		System.out.println("進的去getProductMainImage,id是=" + guid);
		OutputStream out = null;

		if (guid != null) {
			try {

				// 根据id去图片表获取数据
				DayTour_ProductBean bean = productService.findByPrimaryKey(guid);
//				System.out.println("抓到的bean有東西" + bean);

				// 获取blob字段
				int length = (int)bean.getMain_Image().length();
				is = bean.getMain_Image().getBinaryStream();
//				System.out.println("is出來是" + is);
				response.setContentType("image/jpeg");
				out = response.getOutputStream();
				int len = 0;
				
				byte[] bytes = new byte[length+1000];
//				System.out.println("3");
				
				while ((len = is.read(bytes)) != -1) {

//					System.out.println("4");
					out.write(bytes, 0, len);
					out.flush();
				}
				
//				System.out.println("-1");
				out.flush();
				out.close();
			} catch (IOException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

//  讀檔範例檔
//	@RequestMapping("/product.picupload")
//	public void uploadFile(@RequestParam("file") MultipartFile file) {
//		if (!file.isEmpty()) {
//			// 获取文件类型
//			String contentType = file.getContentType();
//			if (!contentType.equals("")) {
//				// 可以对文件类型进行检查
//			}
//			// 获取input域的name属性
//			String name = file.getName();
//			System.out.println(name);
//			// 获取文件名，带扩展名
//			String originFileName = file.getOriginalFilename();
//			System.out.println(originFileName);
//			// 获取文件扩展名
//			String extension = originFileName.substring(originFileName.lastIndexOf("."));
//			System.out.println(extension);
//			// 获取文件大小，单位字节
//			long site = file.getSize();
//
//			if (site > MAX_FILE_SISE) {
//				// 可以对文件大小进行检查
//			}
//
//			if (originFileName != null && originFileName.trim().length() > 0) {
//				sizeInBytes = file.getSize();
//				System.out.println("sizeInBytes = "+sizeInBytes);
//				try {
//					is = file.getInputStream();
//					System.out.println("is = "+is);
//				} catch (IOException e) {
//					System.out.println("file變成is失敗");
//					e.printStackTrace();
//				}
//			}
//			
//			try {
//				Blob blob = SystemUtils.fileToBlob(is, sizeInBytes);
//				System.out.println("blob = "+blob);
//			} catch (IOException | SQLException e) {
//				System.out.println("file變成Blob失敗");
//				e.printStackTrace();
//			}
//
////            构造文件上传后的文件绝对路径，这里取系统时间戳＋文件名作为文件名
////            不推荐这么写，这里只是举例子，这么写会有并发问题
////            应该采用一定的算法生成独一无二的的文件名
//			String fileName = UPLOAD_DIR + String.valueOf(System.currentTimeMillis()) + extension;
//			try {
//				file.transferTo(new File(fileName));
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//		}
//	}
}
