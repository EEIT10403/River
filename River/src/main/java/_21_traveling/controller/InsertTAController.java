package _21_traveling.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;

import javax.imageio.stream.FileImageInputStream;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import _21_traveling.misc.EDMUtils;
import _21_traveling.model.TouristAttractionBean;
import _21_traveling.model.dao.TouristAttractionDAOHibernate;

@Controller
public class InsertTAController {
	@Autowired
	TouristAttractionDAOHibernate touristAttractionDAOHibernate;

	@RequestMapping(value = "/insertta")
	public String method(TouristAttractionBean bean, BindingResult bindingResult, @RequestParam MultipartFile img) {

		
		//讀取圖片
		if (!img.isEmpty()) {
			// 將MultipartFile轉成InputStream
			try (InputStream is = img.getInputStream();) {
				Blob imgBlob = EDMUtils.fileToBlob(is, 10240000);
				bean.setImg(imgBlob);
				// 新增資料
				touristAttractionDAOHibernate.insert(bean);
				System.out.println(bean);
			} catch (IOException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		
		return "insertta.success";

	}

}
