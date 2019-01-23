package _21_traveling.model.dao;

import java.util.List;



import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import _21_traveling.model.TravelItineraryBean;
import _21_traveling.model.TravelItineraryDAO;


@Repository
public class TravelItineraryDAOHibernate implements TravelItineraryDAO {
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
	}

	@Override
	public TravelItineraryBean select(Integer id) {
		return this.getSession().get(TravelItineraryBean.class, id);
	}

	@Override
	public TravelItineraryBean delete(Integer id) {
		TravelItineraryBean bean=this.getSession().get(TravelItineraryBean.class, id);
		if (bean!=null) {
			this.getSession().delete(bean);
			return bean;
		}
		return null;
	}

	@Override
	public TravelItineraryBean update(TravelItineraryBean bean) {
		TravelItineraryBean update=null;
		if(bean.getId()!=null) {
			update=this.getSession().get(TravelItineraryBean.class, bean.getId());
			
		}
		if(update!=null) {
			update.setDailyitinerary(bean.getDailyitinerary());
			update.setFirstday(bean.getFirstday());
			update.setLastday(bean.getLastday());
			update.setMemberid(bean.getMemberid());
			update.setSequence(bean.getSequence());
			update.setSummary(bean.getSummary());
			update.setTicketno(bean.getTicketno());
			update.setTouristday(bean.getTouristday());
			
			return update;
		}
		
		return null;
	}

	@Override
	public List<TravelItineraryBean> findAll() {
		
		return null;
	}

	@Override
	public TravelItineraryBean insert(TravelItineraryBean bean) {
		
		if(bean!=null) {
			this.getSession().save(bean);
			return bean;
		}
		return null;
	}

	@Override
	public List<TravelItineraryBean> findbyMemberId(Integer memberId) {
		   if(memberId!=null) {
		    	  
				Query query = this.getSession().createQuery("from TravelItineraryBean where memberid = ?1")
						.setParameter(1,memberId);
				List<TravelItineraryBean> list = query.list();

				return list;
		      }
		      return null;
			
		
	}

}
