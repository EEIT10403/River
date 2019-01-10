package _27_Order.model.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import DaytourProduct.model.DayTour_ProductBean;
import DaytourProduct.model.DayTour_ProductDAO;
import ShoppingCart.model.ShoppingCartBean;
import _27_Order.model.OrderItemBean;
import _27_Order.model.OrderItemDAO;
import _27_Order.model.TravelerBean;
import _27_Order.model.TravelerDAO;

@Repository
public class OrderItemDAOHibernate implements OrderItemDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}
	@Override
	public OrderItemBean findByPrimaryKey(String id) {
		return this.getSession().get(OrderItemBean.class, id);
	}
	@Override
	public List<OrderItemBean> findAll() {
		return this.getSession().createQuery("from OrderItemBean", OrderItemBean.class)
				.setMaxResults(50)
				.list();
	}
	
	@Override
	public List<OrderItemBean> findTravelerByOrder_No(String Order_No){
//		System.out.println("Order_No="+Order_No);
		Query query = this.getSession().createQuery("from OrderItemBean Where Order_No=:xxx", OrderItemBean.class);
		query.setParameter("xxx", Order_No);
	
		List<OrderItemBean> list = query.getResultList();
		System.out.println("list="+list);
	return list;
	}
	@Override
	public OrderItemBean create(OrderItemBean bean) {
		if(bean!=null) {
			OrderItemBean result = this.getSession().get(OrderItemBean.class, bean.getSerialNum());
			if(result==null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}
	@Override
	public OrderItemBean update(OrderItemBean bean) {
		OrderItemBean result = this.getSession().get(OrderItemBean.class, bean.getSerialNum());
		if(result!=null) {
			this.getSession().merge(bean);

			return result;
		}
		return null;
	}
	@Override
	public boolean removeOneData(String Id) {
		OrderItemBean result = this.getSession().get(OrderItemBean.class, Id);
		if(result!=null) {
			this.getSession().delete(result);
			return true;
		}
		return false;
	}
	
	@Override
	public boolean removeByOrder_No(OrderItemBean bean) {
		Query query = this.getSession().createQuery("delete OrderItemBean where Order_No=:xxx");
		query.setParameter("xxx", bean.getOrder_No());
		
		int delete = query.executeUpdate();
		System.out.println("delete="+delete);
		
		
		if(delete>0) {
			return true;
		}
		return false;
	}
}
