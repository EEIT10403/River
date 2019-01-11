package _27_Order.model;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class OrderItemService {
	@Autowired
	private OrderItemDAO orderItemDAO = null;

    public OrderItemBean findByPrimaryKey(String Id) {
		return orderItemDAO.findByPrimaryKey(Id);
    }
    
    public List<OrderItemBean> findAll() {
		return orderItemDAO.findAll();
    }

	public List<OrderItemBean> findItemsByOrder_No(String Order_No) {
		return orderItemDAO.findItemsByOrder_No(Order_No);

	}

	public OrderItemBean insert(OrderItemBean bean) {
		OrderItemBean result = null;
		if (bean != null) {
			result = orderItemDAO.create(bean);
		}
		return result;
	}

	public OrderItemBean update(OrderItemBean bean) {
		OrderItemBean result = null;
		if (bean != null) {
			result = orderItemDAO.update(bean);
		}

		return result;
	}

//	public abstract boolean removeByOrder_No(TravelerBean bean);
//	public abstract boolean removeOneData(String Id);

	public boolean removeByOrder_No(OrderItemBean bean) {
		boolean result = false;
		if (bean != null) {
			result = orderItemDAO.removeByOrder_No(bean);
		}
		return result;
	}

	
	public boolean removeOneData(String Id) {
		boolean result = false;
		if (Id != null) {
			result = orderItemDAO.removeOneData(Id);
		}
		return result;
	}

}
