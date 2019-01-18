package _21_traveling.misc;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.context.support.ServletContextResource;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.XmlViewResolver;;

@Configuration
@ComponentScan(basePackages={"_21_traveling.controller"})
@EnableWebMvc
public class SpringMVCConfiguration implements WebMvcConfigurer{

	
	
	@Autowired
	private ServletContext application;
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		XmlViewResolver xmlViewResolver = new XmlViewResolver();
		xmlViewResolver.setLocation(new ServletContextResource(
				application, "/WEB-INF/_21_spring-view.xml"));
		registry.viewResolver(xmlViewResolver);
	}

	@Bean
	public MultipartResolver multipartResolver() {
		CommonsMultipartResolver  multipartResolver =new CommonsMultipartResolver();
		multipartResolver.setDefaultEncoding("UTF-8");
		multipartResolver.setMaxUploadSize(10240000);
		return multipartResolver;
	}
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
//		<mvc:resources mapping="/css/**" location="/css/" />
	    registry.addResourceHandler("/css/**").addResourceLocations("/css/");
	}
	
	@Override
	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
		configurer.enable();
	}
	
}
