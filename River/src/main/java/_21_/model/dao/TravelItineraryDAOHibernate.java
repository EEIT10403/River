package _21_.model.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import _21_.model.TravelItineraryBean;
import _21_.model.TravelItineraryDAO;
import _21_.model.hibernate.HibernateUtil;

public class TravelItineraryDAOHibernate implements TravelItineraryDAO {

	SessionFactory sessionFactory;

	// 等待刪除的建構子
	public TravelItineraryDAOHibernate(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public static void main(String[] args) {
		TravelItineraryDAOHibernate dao = new TravelItineraryDAOHibernate(HibernateUtil.getSessionfactory());
		HibernateUtil.getSessionfactory().getCurrentSession().beginTransaction();
		
		
		
//		//select
//		TravelItineraryBean bean = dao.select(1);
//		System.out.println("select:bean="+bean);
//
//		//delete
//		TravelItineraryBean bean2=dao.delete(2);
//		System.out.println("delete:bean2="+bean2);
//		
//		//update
//		
//		TravelItineraryBean bean3=new TravelItineraryBean();
//		bean3.setId(3);
//		bean3.setDailyitinerary("0 3 3 4");
//		bean3.setMemberid(3);
//		bean3.setSequence("1 2 1 1 1");
//		bean3.setSummary("???");
//		bean3.setTouristday(6);
//		bean3 = dao.update(bean3);
//		System.out.println("update:bean3="+bean3);
		
		
		
		TravelItineraryBean bean4=new TravelItineraryBean();
		bean4.setDailyitinerary("0 3 3 4");
		bean4.setMemberid(3);
		bean4.setSequence("1 2 1 1 1");
		bean4.setSummary("???");
		bean4.setTouristday(6);
		bean4 = dao.insert(bean4);
		System.out.println("insert:bean4="+bean4);
		
		
		
		
		
		HibernateUtil.getSessionfactory().getCurrentSession().getTransaction().commit();
		HibernateUtil.closeSessionFactory();
		

	}

	public Session getSession() {
		return sessionFactory.getCurrentSession();
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
		// TODO Auto-generated method stub
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

}
