package DaytourProduct.misc;

import java.util.Locale;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.web.context.support.ServletContextResource;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;
import org.springframework.web.servlet.view.XmlViewResolver;

@Configuration
@ComponentScan(basePackages={"DaytourProduct.controller"})
@EnableWebMvc
public class SpringMvcJavaConfiguration implements WebMvcConfigurer {
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
//		<mvc:resources mapping="/css/**" location="/css/" />
	    registry.addResourceHandler("/css/**").addResourceLocations("/css/");
	}
	
	@Override
	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
		configurer.enable();
	}
	
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		LocaleChangeInterceptor interceptor = new LocaleChangeInterceptor();
		interceptor.setParamName("myLocale");
		registry.addInterceptor(interceptor);
	}
	
	@Autowired
	private ServletContext application;
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		XmlViewResolver xmlViewResolver = new XmlViewResolver();
		xmlViewResolver.setLocation(new ServletContextResource(
				application, "/WEB-INF/spring-views.xml"));
		registry.viewResolver(xmlViewResolver);
	}
	
	@Bean
	public MessageSource messageSource() {
		ResourceBundleMessageSource bundle = new ResourceBundleMessageSource();
		bundle.setBasename("controller.errors");
		return bundle;
	}

	@Bean
	public LocaleResolver localeResolver() {
//		CookieLocaleResolver cookieLocaleResolver = new CookieLocaleResolver();
//		cookieLocaleResolver.setDefaultLocale(Locale.TAIWAN);
//		cookieLocaleResolver.setCookieName("xxx");
//		return cookieLocaleResolver;
		
		SessionLocaleResolver sessionLocaleResolver = new SessionLocaleResolver();
		sessionLocaleResolver.setDefaultLocale(Locale.TAIWAN);
		return sessionLocaleResolver;
	}
//	 <bean id="multipartResolver" 
//  class="org.springframework.web.multipart.commons.CommonsMultipartResolver">  
//        <!-- 设置上传文件的最大尺寸为10MB 10*1024*1024 -->  
//        <property name="maxUploadSize">  
//           <value>10485760</value>  
//        </property>
//   </bean>  
	@Bean(name = "multipartResolver")
	public MultipartResolver multipartResolver() {
		CommonsMultipartResolver cmr =  new CommonsMultipartResolver();
		cmr.setMaxUploadSize(10485760);
		cmr.setDefaultEncoding("UTF-8");
		return cmr;
	}
}
