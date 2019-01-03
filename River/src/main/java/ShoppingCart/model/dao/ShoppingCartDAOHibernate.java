package ShoppingCart.model.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.NativeQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ShoppingCart.model.ShoppingCartBean;
import ShoppingCart.model.ShoppingCartDAO;

@Repository
public class ShoppingCartDAOHibernate implements ShoppingCartDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}
	@Override
	public ShoppingCartBean findByPrimaryKey(int SerialNum) {
		return this.getSession().get(ShoppingCartBean.class, SerialNum);
	}
	
	@Override
	public List<ShoppingCartBean> findAll() {
		return this.getSession().createQuery("from ShoppingCartBean", ShoppingCartBean.class)
				.setMaxResults(50)
				.list();
	}
	@Override
	public List<ShoppingCartBean> findbyMember_Id(String Member_Id) {
		Query query = this.getSession().createQuery("from ShoppingCartBean Where Member_Id=:xxx", ShoppingCartBean.class);
			query.setParameter("xxx", Member_Id);
			List<ShoppingCartBean> list = query.getResultList();
		return list;
//		NativeQuery query = this.getSession().createNativeQuery("select * from ShoppingCart where Member_Id='kitty'");
////		query.setParameter(1, Member_Id);
//		query.addEntity(ShoppingCartBean.class);
//		List<ShoppingCartBean> data = (List<ShoppingCartBean>)query.list();
//		return data;
		
	}
	@Override
	public ShoppingCartBean create(ShoppingCartBean bean) {
		if(bean!=null) {
			ShoppingCartBean result = this.getSession().get(ShoppingCartBean.class, bean.getSerialNum());
			if(result==null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}
	@Override
	public ShoppingCartBean update(ShoppingCartBean bean) {
		ShoppingCartBean result = this.getSession().get(ShoppingCartBean.class, bean.getSerialNum());
		if(result!=null) {
			this.getSession().merge(bean);

			return result;
		}
		return null;
	}
	@Override
	public boolean remove(int SerialNum) {
		ShoppingCartBean result = this.getSession().get(ShoppingCartBean.class, SerialNum);
		if(result!=null) {
			this.getSession().delete(result);
			return true;
		}
		return false;
	}
}
