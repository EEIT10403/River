package sabre.model;

import java.util.List;

public interface F_OrderDAO {

	public abstract F_OrderBean findByPrimaryKey(String Forder_No);

	public abstract List<F_OrderBean> findAll();
	
	public abstract List<F_OrderBean> findOrdersByMemberId(String Forder_No);

	public abstract F_OrderBean create(F_OrderBean bean);

	public abstract F_OrderBean update(F_OrderBean bean);

	public abstract boolean removeByForder_No(String Forder_No);
	


}