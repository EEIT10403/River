package DaytourProduct.model.dao;

import java.sql.Blob;
import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import DaytourProduct.model.DayTour_ProductBean;
import DaytourProduct.model.DayTour_ProductDAO;
import ShoppingCart.model.ShoppingCartBean;

@Repository
public class DayTour_ProductDAOHibernate implements DayTour_ProductDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}
	@Override
	public DayTour_ProductBean findByPrimaryKey(String Product_Id) {
		return this.getSession().get(DayTour_ProductBean.class, Product_Id);
	}
	@Override
	public List<DayTour_ProductBean> findAll() {
		return this.getSession().createQuery("from DayTour_ProductBean", DayTour_ProductBean.class)
				.setMaxResults(50)
				.list();
	}
	@Override
	public List<DayTour_ProductBean> findProductByRegion(String Region){
//		System.out.println("Region="+Region);
		Query query = this.getSession().createQuery("from DayTour_ProductBean Where Region=:xxx", DayTour_ProductBean.class);
		query.setParameter("xxx", Region);
	
		List<DayTour_ProductBean> list = query.getResultList();
		System.out.println("list="+list);
	return list;
	}
	@Override
	public DayTour_ProductBean create(DayTour_ProductBean bean) {
		if(bean!=null) {
			DayTour_ProductBean result = this.getSession().get(DayTour_ProductBean.class, bean.getProduct_Id());
			if(result==null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}
	@Override
	public DayTour_ProductBean update(DayTour_ProductBean bean) {
		DayTour_ProductBean result = this.getSession().get(DayTour_ProductBean.class, bean.getProduct_Id());
		if(result!=null) {
			this.getSession().merge(bean);

			return result;
		}
		return null;
	}
	@Override
	public boolean remove(String Product_Id) {
		DayTour_ProductBean result = this.getSession().get(DayTour_ProductBean.class, Product_Id);
		if(result!=null) {
			this.getSession().delete(result);
			return true;
		}
		return false;
	}
}
