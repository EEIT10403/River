package _21_.model.hibernate;

import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class HibernateUtil {
	private static final SessionFactory sessionFactory = buildSessionFactory();
	public static SessionFactory getSessionfactory() {
		return sessionFactory;
	}
	public static void closeSessionFactory() {
		if(sessionFactory!=null) {
			sessionFactory.close();
		}
	}
	private static SessionFactory buildSessionFactory() {
		try {
			final StandardServiceRegistry serviceRegistry =
					new StandardServiceRegistryBuilder().configure().build();
			return new MetadataSources(serviceRegistry).buildMetadata().buildSessionFactory();
		} catch (Exception e) {
			e.printStackTrace();
			throw new ExceptionInInitializerError(e);
		}
	}
}
