package _27_Partner.model.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import _27_Partner.model.StaffBean;
import _27_Partner.model.StaffDAO;

@Repository
public class StaffDAOHibernate implements StaffDAO {

//	private Session session = null;
//	public CustomerDAOHibernate(Session session) {
//		this.session = session;
//	}
	private SessionFactory sessionFactory=null;
	
	public StaffDAOHibernate(SessionFactory sessionFactory) {
	this.sessionFactory = sessionFactory;
}

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}


	@Override
	public StaffBean findByPrimaryKey(String staff_Id) {
		StaffBean result = this.getSession().get(StaffBean.class, staff_Id);
		if (result != null) {
			return result;
		}
		return null;
	}

//	@Override
//	public boolean update(byte[] password, String email, java.util.Date birth, String custid) {
//		CustomerBean update = this.getSession().get(CustomerBean.class, custid);
//		if (update != null) {
//			update.setBirth(birth);
//			update.setCustid(custid);
//			update.setEmail(email);
//			update.setPassword(password);
//			this.getSession().save(update);
//
//			return true;
//		}
//		return false;
//	}
}
