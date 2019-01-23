package _27_Order.model;

import java.util.List;

public interface OrderItemDAO {

	public abstract OrderItemBean findByPrimaryKey(String id);

	public abstract List<OrderItemBean> findAll();
	public abstract List getSalesSum();
	public abstract List<OrderItemBean> findItemsByOrder_No(String Order_No);

	public abstract OrderItemBean create(OrderItemBean bean);

	public abstract OrderItemBean update(OrderItemBean bean);

	public abstract boolean removeByOrder_No(OrderItemBean bean);
	
	public abstract boolean removeOneData(String Id);

}