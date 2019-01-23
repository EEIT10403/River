package sabre.model.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sabre.model.F_ContactBean;
import sabre.model.F_ContactDAO;

@Repository
public class F_ContactDAOHibernate implements F_ContactDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}
	@Override
	public F_ContactBean findByPrimaryF_serialNum(int F_serialNum) {
		return this.getSession().get(F_ContactBean.class, F_serialNum);
	}
	@Override
	public List<F_ContactBean> findAll() {
		return this.getSession().createQuery("from F_ContactBean", F_ContactBean.class)
				.setMaxResults(50)
				.list();
	}
	@Override
	public F_ContactBean create(F_ContactBean bean) {
		if(bean!=null) {
			F_ContactBean result = this.getSession().get(F_ContactBean.class, bean.getF_serialNum());
			if(result==null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}

	@Override
	public boolean remove(int F_serialNum) {
		F_ContactBean result = this.getSession().get(F_ContactBean.class, F_serialNum);
		if(result!=null) {
			this.getSession().delete(result);
			return true;
		}
		return false;
	}
}
