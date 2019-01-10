package misc;

import java.util.Properties;

import javax.naming.NamingException;
import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jndi.JndiObjectFactoryBean;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import DaytourProduct.model.DayTour_ProductBean;
import ShoppingCart.model.ShoppingCartBean;
import _11.model.MemberBean;
import _21_traveling.model.TouristAttractionBean;
import _21_traveling.model.TravelItineraryBean;
import _27_Order.model.OrderItemBean;
import _27_Order.model.OrderSellBean;
import _27_Order.model.TravelerBean;


@Configuration
@ComponentScan(basePackages={"DaytourProduct.model","ShoppingCart.model","_11.model","_21_traveling.model","sabre.model","_27_Order.model"})
@EnableTransactionManagement
public class SpringJavaConfiguration {
	@Bean
	public PlatformTransactionManager transactionManager() {
		return new HibernateTransactionManager(sessionFactory());
	}
	
	@Bean
	public DataSource dataSource() {
		try {
			JndiObjectFactoryBean bean = new JndiObjectFactoryBean();
			bean.setJndiName("java:comp/env/jdbc/xxx");
			bean.setProxyInterface(DataSource.class);
			bean.afterPropertiesSet();
			return (DataSource) bean.getObject();
		} catch (IllegalArgumentException | NamingException e) {
			e.printStackTrace();
			throw new ExceptionInInitializerError(e);
		}
	}
	
	

	@Bean
	public SessionFactory sessionFactory() {
		LocalSessionFactoryBuilder builder = new LocalSessionFactoryBuilder(dataSource());
		builder.addAnnotatedClasses( DayTour_ProductBean.class,ShoppingCartBean.class,MemberBean.class
				,TouristAttractionBean.class,TravelItineraryBean.class,TravelerBean.class,OrderItemBean.class,OrderSellBean.class);


		Properties props = new Properties();
		props.setProperty("hibernate.dialect", "org.hibernate.dialect.SQLServer2008Dialect");
//		props.setProperty("hibernate.show_sql", "true");
//		props.setProperty("hibernate.current_session_context_class", "thread");
		builder.addProperties(props);

		return builder.buildSessionFactory();
	}
	
}
