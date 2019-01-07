//package _11.misc;
//
//import java.util.Properties;
//
//import javax.naming.NamingException;
//import javax.sql.DataSource;
//
//import org.hibernate.SessionFactory;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.ComponentScan;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.jndi.JndiObjectFactoryBean;
//import org.springframework.orm.hibernate5.HibernateTransactionManager;
//import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
//import org.springframework.transaction.PlatformTransactionManager;
//import org.springframework.transaction.annotation.EnableTransactionManagement;
//
//import _11.model.MemberBean;
//
//
//@Configuration
//@ComponentScan(basePackages="_11.model")
//@EnableTransactionManagement
//public class SpringHibernateConfigure {
//	@Bean
//	public PlatformTransactionManager transactionManager() {
//		return new HibernateTransactionManager(sessionFactory());
//	}
//	
//	@Bean
//	public DataSource dataSource() {
//		System.out.println("MemberDAOHibernate");		
//		try {
//			JndiObjectFactoryBean bean = new JndiObjectFactoryBean();
//			bean.setJndiName("java:comp/env/jdbc/River");
//			bean.setProxyInterface(DataSource.class);
//			bean.afterPropertiesSet();
//			return (DataSource)bean.getObject();
//		} catch (IllegalArgumentException | NamingException e) {
//			e.printStackTrace();
//			throw new ExceptionInInitializerError(e);
//		}
//	}
//	@Bean
//	public SessionFactory sessionFactory() {
//		LocalSessionFactoryBuilder builder = new LocalSessionFactoryBuilder(dataSource());
//		Properties props = new Properties();
//		props.setProperty("hibernate.dialect", "org.hibernate.dialect.SQLServerDialect");
////		props.setProperty("hibernate.current_session_context_class", "thread");
//		props.setProperty("hibernate.show_sql", "true");
//		builder.addProperties(props);
//		builder.addAnnotatedClass(MemberBean.class);
//		return builder.buildSessionFactory();
//	}
//}
