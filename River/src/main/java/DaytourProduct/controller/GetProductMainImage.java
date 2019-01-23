package DaytourProduct.controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DaytourProduct.model.DayTour_ProductBean;
import DaytourProduct.model.DayTour_ProductDAO;
import DaytourProduct.model.ProductService;
import DaytourProduct.model.dao.DayTour_ProductDAOHibernate;

/**
 * Servlet implementation class GetProductMainImage
 */
//@WebServlet("/getProductMainImage")
public class GetProductMainImage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	InputStream is = null;
	
	
    public GetProductMainImage() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String guid = request.getParameter("Product_Id");
		
		System.out.println("進的去Servlet getProductMainImage,id是="+guid);
		System.out.println("有到2");
	        ServletOutputStream out = null;
	 
	        if(guid!=null){
	            try {
	                //根据id去图片表获取数据
	            	ProductService productService= new ProductService() ;
	            	DayTour_ProductDAO pdao = new DayTour_ProductDAOHibernate();
	            	DayTour_ProductBean bean=pdao.findByPrimaryKey(guid);
//	            	DayTour_ProductBean bean = productService.findByPrimaryKey(guid);
	            	System.out.println("有到2這");
	            	System.out.println(bean);
	                //获取blob字段
	                is   = bean.getMain_Image().getBinaryStream();
	                System.out.println("is出來是"+is);
	                response.setContentType("image/jpeg");
	                out = response.getOutputStream();
	                int len=0;
	                byte[] buf = new byte[8192];
	                while((len=is.read(buf))!=-1){
	                	System.out.println(len);
	                    out.write(buf, 0, len);
	                }
	 
	                out.flush();
	                out.close();
	            } catch (IOException e) {
	                e.printStackTrace();
	            } catch (SQLException e) {
					e.printStackTrace();
				}
	        }
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
