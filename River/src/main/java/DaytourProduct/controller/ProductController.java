package DaytourProduct.controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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

		webDataBinder.registerCustomEditor(double.class, 
				new PrimitiveNumberEditor(java.lang.Double.class, true));
	}

	long sizeInBytes = 0;
	InputStream is = null;


	@RequestMapping("/pages/product.controller")
	public String method(@RequestParam(value = "Main_Image", required = false) MultipartFile file, Model model,
			String prodaction, DayTour_ProductBean bean, BindingResult bindingResults)
			throws IOException, ServletException {
//接收資料
//轉換資料
		System.out.println(file);
		System.out.println(bean);
	//處理圖片檔案	
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
				System.out.println("sizeInBytes = "+sizeInBytes);
				try {
					is = file.getInputStream();
					System.out.println("is = "+is);
				} catch (IOException e) {
					System.out.println("file變成is失敗");
					e.printStackTrace();
				}
			}
			
			try {
			//File 轉成能用的Blob
				Blob blob = SystemUtils.fileToBlob(is, sizeInBytes);
				System.out.println("blob = "+blob);
				bean.setMain_Image(blob);
				System.out.println("新的bean = "+bean);
			} catch (IOException | SQLException e) {
				System.out.println("file變成Blob失敗");
				e.printStackTrace();
			}
		}
		
		
		

		Map<String, String> errors = new HashMap<>();
		model.addAttribute("errors", errors);
//沒用,先留著而已
		if (bindingResults != null && bindingResults.hasFieldErrors()) {
			if (bindingResults.hasFieldErrors("id")) {
				errors.put("id", "id must be an integer");
			}
			if (bindingResults.hasFieldErrors("price")) {
				errors.put("price", "price must be a number");
			}
			if (bindingResults.hasFieldErrors("make")) {
				errors.put("make", "make must be a date of YYYY-MM-DD");
			}
			if (bindingResults.hasFieldErrors("expire")) {
				errors.put("expire", "expire must be an integer");
			}
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
