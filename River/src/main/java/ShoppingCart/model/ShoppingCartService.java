package ShoppingCart.model;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
@Transactional
public class ShoppingCartService {
	@Autowired
	private ShoppingCartDAO scDao = null;

	public List<ShoppingCartBean> select(ShoppingCartBean bean) {
		List<ShoppingCartBean> result = null;
		if(bean!=null && bean.getProduct_Id()!=null) {
			ShoppingCartBean temp = scDao.findByPrimaryKey(bean.getSerialNum());
			if(temp!=null) {
				result = new ArrayList<ShoppingCartBean>();
				result.add(temp);
			}
		} else {
			result = scDao.findAll(); 
		}
		return result;
	}
	public List<ShoppingCartBean> selectById(String Member_Id) {
		List<ShoppingCartBean> result = null;
		if(Member_Id!=null) {
			 result = scDao.findbyMember_Id(Member_Id);
			}
		return result;
	}
	public ShoppingCartBean insert(ShoppingCartBean bean) {
		ShoppingCartBean result = null;
		if(bean!=null) {
			result = scDao.create(bean);
		}
		return result;
	}
	public ShoppingCartBean update(ShoppingCartBean bean) {
		ShoppingCartBean result = null;
		if(bean!=null) {
			result = scDao.update(bean);
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
	public boolean delete(ShoppingCartBean bean) {
		boolean result = false;
		if(bean!=null) {
			result = scDao.remove(bean.getSerialNum());
		}
		return result;
	}
}
