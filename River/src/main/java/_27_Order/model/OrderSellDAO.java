package _27_Order.model;

import java.util.List;

public interface OrderSellDAO {

	public abstract OrderSellBean findByPrimaryKey(String OrderNo);

	public abstract List<OrderSellBean> findAll();
	
//	public abstract List<OrderSellBean> findOrdersByOrder_No(String Order_No);
	public abstract List<OrderSellBean> findOrdersByMemberId(String Order_No);

	public abstract OrderSellBean create(OrderSellBean bean);

	public abstract OrderSellBean update(OrderSellBean bean);

	public abstract boolean removeByOrder_No(String Order_No);
	
//	public abstract boolean removeOneData(String Id);

}