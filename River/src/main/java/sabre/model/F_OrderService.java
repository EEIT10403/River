package sabre.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class F_OrderService {
	@Autowired
	private F_OrderDAO f_OrderDAO = null;

 
    public List<F_OrderBean> findAll() {
		return f_OrderDAO.findAll();
    }
    
    public List<F_OrderBean> findOrdersByMemberId(String Member_Id) {
		return f_OrderDAO.findOrdersByMemberId(Member_Id);

	}
	public F_OrderBean findOrdersByForder_No(String Forder_No) {
		return f_OrderDAO.findByPrimaryKey(Forder_No);

	}

	public F_OrderBean insert(F_OrderBean bean) {
		F_OrderBean result = null;
		if (bean != null) {
			result = f_OrderDAO.create(bean);
		}
		return result;
	}

	public F_OrderBean update(F_OrderBean bean) {
		F_OrderBean result = null;
		if (bean != null) {
			result = f_OrderDAO.update(bean);
		}

		return result;
	}


	public boolean removeByForder_No(String Forder_No) {
		boolean result = false;
		if (Forder_No != null) {
			result = f_OrderDAO.removeByForder_No(Forder_No);
		}
		return result;
	}

	

}