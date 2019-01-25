package sabre.model;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class F_ContactService {
	@Autowired
	private F_ContactDAO f_ContactDAO = null;

	public List<F_ContactBean> select(F_ContactBean bean) {
		List<F_ContactBean> result = null;
		if(bean!=null && bean.getForder_No()!=null) {
			F_ContactBean temp = f_ContactDAO.findByPrimaryF_serialNum(bean.getF_serialNum());
			if(temp!=null) {
				result = new ArrayList<F_ContactBean>();
				result.add(temp);
			}
		} else {
			result = f_ContactDAO.findAll(); 
		}
		return result;
	}
	
	public List<F_ContactBean> findOrdersByMemberId(String Member_Id) {
		return f_ContactDAO.findOrdersByMemberId(Member_Id);

	}
	

	public List<F_ContactBean> findOrdersByFOrder_No(String FOrder_No) {
		return f_ContactDAO.findOrdersByMemberId(FOrder_No);

	}
	
	
	
	public F_ContactBean insert(F_ContactBean bean) {
		F_ContactBean result = null;
		if(bean!=null) {
			result = f_ContactDAO.create(bean);
		}
		return result;
	}
	
	public boolean delete(F_ContactBean bean) {
		boolean result = false;
		if(bean!=null) {
			result = f_ContactDAO.remove(bean.getF_serialNum());
		}
		return result;
	}
}
