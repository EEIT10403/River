package _21_.model.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import _21_.model.TouristAttractionBean;
import _21_.model.TouristAttractionDAO;
import _21_.model.hibernate.HibernateUtil;



public class TouristAttractionDAOHibernate implements TouristAttractionDAO {

	private SessionFactory sessionFactory;

	// 改成spring時不需要
	public TouristAttractionDAOHibernate(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public static void main(String[] args) {
		HibernateUtil.getSessionfactory().getCurrentSession().beginTransaction();

		TouristAttractionDAOHibernate dao = new TouristAttractionDAOHibernate(HibernateUtil.getSessionfactory());
		// select
		TouristAttractionBean bean1 = dao.select(2);
		System.out.println("bean1=" + bean1);
//		//insert
//		TouristAttractionBean bean2=new TouristAttractionBean();
//		bean2.setLng(440.44);
//		bean2.setLat(22.2222);
//		bean2=dao.insert(bean2);
//		System.out.println("bean2="+bean2);
//		//update
//		TouristAttractionBean bean3=new TouristAttractionBean();
//		bean3.setId(2);
//		bean3.setLng(66666.44);
//		bean3.setLat(6666.2222);
//		bean3=dao.update(bean3);
//		System.out.println("bean3="+bean3);
//		//delete
//		dao.delete(1);
//
//		//findbytouristarea
//		List<TouristAttractionBean> list1 = dao.findbytouristarea("%台北%");
//		System.out.println("findbytouristarea = "+list1);
//
//		// findbyaddress
//		List<TouristAttractionBean> list2 = dao.findbyaddress("%test%");
//		System.out.println("findbyaddress=" + list2);
		//findbylatlng
//		List<TouristAttractionBean>bean5 = dao.findbylatlng(12.565, 65.565);
//		System.out.println("findbylatlng="+bean5);

		HibernateUtil.getSessionfactory().getCurrentSession().getTransaction().commit();
		HibernateUtil.closeSessionFactory();

	}

	public Session getSession() {
//		Session session;
//		try {
//		  session = sessionFactory.getCurrentSession();
//		    
//		} catch (HibernateException e) {
//		    session = sessionFactory.openSession();
//		}
//		return session;

//--------------------------------------------------------------

		return sessionFactory.getCurrentSession();

	}

	@Override
	public TouristAttractionBean select(Integer id) {
		return this.getSession().get(TouristAttractionBean.class, id);
	}

	@Override
	public TouristAttractionBean insert(TouristAttractionBean bean) {

		if (bean != null) {
			this.getSession().save(bean);
			return bean;
		}
		return null;
	}

	@Override
	public TouristAttractionBean update(TouristAttractionBean bean) {
		TouristAttractionBean update = this.getSession().get(TouristAttractionBean.class, bean.getId());

		if (update != null) {
			update.setTouristarea(bean.getTouristarea());
			update.setAddress(bean.getAddress());
			update.setImg(bean.getImg());
			update.setLat(bean.getLat());
			update.setLng(bean.getLng());
			update.setSummary(bean.getSummary());
			return update;
		}

		return null;
	}

	@Override
	public TouristAttractionBean delete(Integer id) {

		TouristAttractionBean bean = this.getSession().get(TouristAttractionBean.class, id);

		if (bean != null) {
			this.getSession().delete(bean);
			return bean;
		}

		return null;
	}

	@Override
	public List<TouristAttractionBean> findbytouristarea(String touristarea) {
		if (touristarea != null) {
			Query query = this.getSession().createQuery("from TouristAttractionBean where touristarea like ?1")
					.setParameter(1, touristarea);
			List<TouristAttractionBean> list = query.list();
			return list;
		}
		return null;
	}

	@Override
	public List<TouristAttractionBean> findbyaddress(String address) {
      if(address!=null) {
    	  
		Query query = this.getSession().createQuery("from TouristAttractionBean where address like ?1").setParameter(1,
				address);
		List<TouristAttractionBean> list = query.list();

		return list;
      }
      return null;
	}

	@Override
	public List<TouristAttractionBean> findbylatlng(Double lat, Double lng) {
		if(lat!=null&lng!=null) {
			
		Query query = this.getSession().createQuery("from TouristAttractionBean where lat = ?1 and lng=?2")
				.setParameter(1, lat).setParameter(2, lng);
	    
		return query.list() ;
		
		}

	return null;
	}

}
