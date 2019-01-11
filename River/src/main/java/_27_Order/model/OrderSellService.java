package _27_Order.model;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class OrderSellService {
	@Autowired
	private OrderSellDAO orderSellDAO = null;

//    public OrderSellBean findByPrimaryKey(String Id) {
//		return orderSellDAO.findByPrimaryKey(Id);
//    }
//    
    public List<OrderSellBean> findAll() {
		return orderSellDAO.findAll();
    }
    
    public List<OrderSellBean> findOrdersByMemberId(String Member_Id) {
		return orderSellDAO.findOrdersByMemberId(Member_Id);

	}
	public OrderSellBean findOrdersByOrder_No(String Order_No) {
		return orderSellDAO.findByPrimaryKey(Order_No);

	}

	public OrderSellBean insert(OrderSellBean bean) {
		OrderSellBean result = null;
		if (bean != null) {
			result = orderSellDAO.create(bean);
		}
		return result;
	}

	public OrderSellBean update(OrderSellBean bean) {
		OrderSellBean result = null;
		if (bean != null) {
			result = orderSellDAO.update(bean);
		}

		return result;
	}

//	public abstract boolean removeByOrder_No(TravelerBean bean);
//	public abstract boolean removeOneData(String Id);

	public boolean removeByOrder_No(String Order_No) {
		boolean result = false;
		if (Order_No != null) {
			result = orderSellDAO.removeByOrder_No(Order_No);
		}
		return result;
	}

	

}
