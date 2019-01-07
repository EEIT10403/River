package DaytourProduct.model;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class ProductService {
	@Autowired
	private DayTour_ProductDAO productDao = null;
	
	
    public DayTour_ProductBean findByPrimaryKey(String Product_Id) {
		return productDao.findByPrimaryKey(Product_Id);
    }

	public List<DayTour_ProductBean> select(DayTour_ProductBean bean) {
		List<DayTour_ProductBean> result = null;
		if(bean!=null && bean.getProduct_Id()!=null) {
			DayTour_ProductBean temp = productDao.findByPrimaryKey(bean.getProduct_Id());
			if(temp!=null) {
				result = new ArrayList<DayTour_ProductBean>();
				result.add(temp);
			}
		} else {
			result = productDao.findAll(); 
		}
		return result;
	}
	public DayTour_ProductBean insert(DayTour_ProductBean bean) {
		DayTour_ProductBean result = null;
		if(bean!=null) {
			result = productDao.create(bean);
		}
		return result;
	}
	public DayTour_ProductBean update(DayTour_ProductBean bean) {
		DayTour_ProductBean result = null;
		if(bean!=null) {
			result = productDao.update(bean);
		}
		
		return result;
	}
//	public DayTour_ProductBean update(DayTour_ProductBean bean) {
//		DayTour_ProductBean result = null;
//		if(bean!=null) {
//			result = productDao.update(bean.getProd_Name(),bean.getFeatures(),bean.getTicket_type_1(), 
//					bean.getUnitPrice_1(),bean.getTicket_type_2(),bean.getUnitPrice_2(),bean.getTicket_type_3(),
//					bean.getUnitPrice_3(),bean.getTicket_type_4(),bean.getUnitPrice_4(),bean.getDiscount_Rate(),
//					bean.getAcceptable_Discount_Rate(),
//					bean.getMain_Image(),bean.getRegion(),bean.getCountry(),bean.getDetail(),		
//					bean.getRights(),  bean.getProduct_Id());
//		}
//		
//		return result;
//	}
	public boolean delete(DayTour_ProductBean bean) {
		boolean result = false;
		if(bean!=null) {
			result = productDao.remove(bean.getProduct_Id());
		}
		return result;
	}
}
