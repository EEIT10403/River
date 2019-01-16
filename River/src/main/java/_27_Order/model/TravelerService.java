package _27_Order.model;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class TravelerService {
	@Autowired
	private TravelerDAO travelerDAO = null;

//    public TravelerBean findByPrimaryKey(String Id) {
//		return productDao.findByPrimaryKey(Product_Id);
//    }

	public List<TravelerBean> findTravelerByOrder_NO(String Order_No) {
		return travelerDAO.findTravelerByOrder_No(Order_No);

	}

	public TravelerBean insert(TravelerBean bean) {
		TravelerBean result = null;
		if (bean != null) {
			result = travelerDAO.create(bean);
		}
		return result;
	}

	public TravelerBean update(TravelerBean bean) {
		TravelerBean result = null;
		if (bean != null) {
			result = travelerDAO.update(bean);
		}

		return result;
	}

//	public abstract boolean removeByOrder_No(TravelerBean bean);
//	public abstract boolean removeOneData(String Id);

	public boolean removeByOrder_No(TravelerBean bean) {
		boolean result = false;
		if (bean != null) {
			result = travelerDAO.removeByOrder_No(bean);
		}
		return result;
	}

	
	public boolean removeOneData(String Id) {
		boolean result = false;
		if (Id != null) {
			result = travelerDAO.removeOneData(Id);
		}
		return result;
	}

}
