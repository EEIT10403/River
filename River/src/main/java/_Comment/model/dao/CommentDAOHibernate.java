package _Comment.model.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import DaytourProduct.model.DayTour_ProductBean;
import _Comment.model.CommentBean;
import _Comment.model.CommentDAO;

@Repository
public class CommentDAOHibernate implements CommentDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}
	@Override
	public List<CommentBean> findByProd_Name(String Prod_Name) {
		Query query = this.getSession().createQuery("from CommentBean Where Prod_Name=:xxx", CommentBean.class);
		query.setParameter("xxx", Prod_Name);
	
		List<CommentBean> list = query.getResultList();
		System.out.println("list="+list);
	return list;
	}
	@Override
	public CommentBean insertOneComment(CommentBean bean) {
		if(bean!=null) {
			CommentBean result = this.getSession().get(CommentBean.class, bean.getSerialNum());
			if(result==null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}
	@Override
	public boolean DeleteOneComment(CommentBean bean) {
		CommentBean result = this.getSession().get(CommentBean.class, bean.getSerialNum());
		if(result!=null) {
			this.getSession().delete(result);
			return true;
		}
		return false;
	}
	@Override
	public List<CommentBean> findByOder_No(String Order_No) {
		Query query = this.getSession().createQuery("from CommentBean Where Order=:xxx", CommentBean.class);
		query.setParameter("xxx", Order_No);
	
		List<CommentBean> list = query.getResultList();
		System.out.println("list="+list);
	return list;
	}
}
