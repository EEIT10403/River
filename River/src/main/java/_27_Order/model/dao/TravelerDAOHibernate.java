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
import _27_Order.model.TravelerBean;
import _27_Order.model.TravelerDAO;

@Repository
public class TravelerDAOHibernate implements TravelerDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}
//	@Override
//	public DayTour_ProductBean findByPrimaryKey(String Product_Id) {
//		return this.getSession().get(DayTour_ProductBean.class, Product_Id);
//	}
//	@Override
//	public List<DayTour_ProductBean> findAll() {
//		return this.getSession().createQuery("from DayTour_ProductBean", DayTour_ProductBean.class)
//				.setMaxResults(50)
//				.list();
//	}
	
	@Override
	public List<TravelerBean> findTravelerByOrder_No(String Order_No){
//		System.out.println("Order_No="+Order_No);
		Query query = this.getSession().createQuery("from TravelerBean Where Order_No=:xxx", TravelerBean.class);
		query.setParameter("xxx", Order_No);
	
		List<TravelerBean> list = query.getResultList();
		System.out.println("list="+list);
	return list;
	}
	@Override
	public TravelerBean create(TravelerBean bean) {
		if(bean!=null) {
			TravelerBean result = this.getSession().get(TravelerBean.class, bean.getSerialNum());
			if(result==null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}
	@Override
	public TravelerBean update(TravelerBean bean) {
		TravelerBean result = this.getSession().get(TravelerBean.class, bean.getSerialNum());
		if(result!=null) {
			this.getSession().merge(bean);

			return result;
		}
		return null;
	}
	@Override
	public boolean removeOneData(String Id) {
		TravelerBean result = this.getSession().get(TravelerBean.class, Id);
		if(result!=null) {
			this.getSession().delete(result);
			return true;
		}
		return false;
	}
	
	@Override
	public boolean removeByOrder_No(TravelerBean bean) {
		Query query = this.getSession().createQuery("delete TravelerBean where Order_No=:xxx");
		query.setParameter("xxx", bean.getOrder_No());
		
		int delete = query.executeUpdate();
		System.out.println("delete="+delete);
		
		
		if(delete>0) {
			return true;
		}
		return false;
	}
}
