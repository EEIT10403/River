package _27_Order.model.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import _27_Order.model.OrderItemBean;
import _27_Order.model.OrderSellBean;
import _27_Order.model.OrderSellDAO;
import _27_Order.model.TravelerBean;

@Repository
public class OrderSellDAOHibernate implements OrderSellDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}
//	@Override
//	public OrderSellBean findByPrimaryKey(String id) {
//		return this.getSession().get(OrderItemBean.class, id);
//	}
	@Override
	public List<OrderSellBean> findAll() {
		return this.getSession().createQuery("from OrderSellBean", OrderSellBean.class)
				.setMaxResults(50)
				.list();
	}
	
	@Override
	public List<OrderSellBean> findOrdersByMemberId(String MemberId){
//		System.out.println("Order_No="+Order_No);
		Query query = this.getSession().createQuery("from OrderSellBean Where Member_Id=:xxx", OrderSellBean.class);
		query.setParameter("xxx", MemberId);
	
		List<OrderSellBean> list = query.getResultList();
//		System.out.println("有近findOrdersByMemberId ==>list="+list);
	return list;
	}
	@Override
	public List<OrderSellBean> findOrdersByOrder_No(String Order_No){
//		System.out.println("Order_No="+Order_No);
		Query query = this.getSession().createQuery("from OrderSellBean Where Order_No=:xxx", OrderSellBean.class);
		query.setParameter("xxx", Order_No);
	
		List<OrderSellBean> list = query.getResultList();
		System.out.println("list="+list);
	return list;
	}
	@Override
	public OrderSellBean create(OrderSellBean bean) {
		if(bean!=null) {
			OrderSellBean result = this.getSession().get(OrderSellBean.class, bean.getOrder_No());
			if(result==null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}
	@Override
	public OrderSellBean update(OrderSellBean bean) {
		OrderSellBean result = this.getSession().get(OrderSellBean.class, bean.getOrder_No());
		if(result!=null) {
			this.getSession().merge(bean);

			return result;
		}
		return null;
	}
//	@Override
//	public boolean removeOneData(String Id) {
//		OrderItemBean result = this.getSession().get(OrderItemBean.class, Id);
//		if(result!=null) {
//			this.getSession().delete(result);
//			return true;
//		}
//		return false;
//	}
	
	@Override
	public boolean removeByOrder_No(OrderSellBean bean) {
		Query query = this.getSession().createQuery("delete OrderSellBean where Order_No=:xxx");
		query.setParameter("xxx", bean.getOrder_No());
		
		int delete = query.executeUpdate();
		System.out.println("delete="+delete);
		
		
		if(delete>0) {
			return true;
		}
		return false;
	}
}
