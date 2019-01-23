package sabre.model.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sabre.model.F_OrderBean;
import sabre.model.F_OrderDAO;

@Repository
public class F_OrderDAOHibernate implements F_OrderDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}
	@Override
	public F_OrderBean findByPrimaryKey(String Forder_No) {
		return this.getSession().get(F_OrderBean.class, Forder_No);
	}
	@Override
	public List<F_OrderBean> findAll() {
		return this.getSession().createQuery("from F_OrderBean", F_OrderBean.class)
				.setMaxResults(50)
				.list();
	}
	
	@Override
	public List<F_OrderBean> findOrdersByMemberId(String MemberId){
//		System.out.println("Order_No="+Order_No);
		System.out.println("有近來hibernate-"+MemberId);
		Query query = this.getSession().createQuery("from F_OrderBean Where Member_Id=:xxx", F_OrderBean.class);
		query.setParameter("xxx", MemberId);
	
		List<F_OrderBean> list = query.getResultList();
//		System.out.println("有近findOrdersByMemberId ==>list="+list);
	return list;
	}

	@Override
	public F_OrderBean create(F_OrderBean bean) {
		if(bean!=null) {
			F_OrderBean result = this.getSession().get(F_OrderBean.class, bean.getForder_No());
			if(result==null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}
	@Override
	public F_OrderBean update(F_OrderBean bean) {
		F_OrderBean result = this.getSession().get(F_OrderBean.class, bean.getForder_No());
		if(result!=null) {
			this.getSession().merge(bean);

			return result;
		}
		return null;
	}

	@Override
	public boolean removeByForder_No(String Forder_No) {
		Query query = this.getSession().createQuery("delete F_OrderBean where Forder_No=:xxx");
		query.setParameter("xxx", Forder_No);
		
		int delete = query.executeUpdate();
		System.out.println("delete="+delete);
		
		
		if(delete>0) {
			return true;
		}
		return false;
	}
}
