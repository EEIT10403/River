package _21_traveling.model.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import _21_traveling.model.TouristAttractionBean;
import _21_traveling.model.TouristAttractionDAO;




@Repository
public class TouristAttractionDAOHibernate implements TouristAttractionDAO {
   @Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		Session session;
		try {
		  session = sessionFactory.getCurrentSession();
		    
		} catch (HibernateException e) {
		    session = sessionFactory.openSession();
		}
		return session;

//--------------------------------------------------------------

//		return sessionFactory.getCurrentSession();

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
	        this.getSession().merge(bean);
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

	@Override
	public List<TouristAttractionBean> findbyAddrTA(String address, String touristarea) {
		if(address!=null&touristarea!=null) {
			
			Query query = this.getSession().createQuery(
					"from TouristAttractionBean where address like ?1 and touristarea like ?2")
					.setParameter(1, address)
					.setParameter(2, touristarea);
			return query.list() ;
			}
		return null;
		
	}



	
	
	
	

}
