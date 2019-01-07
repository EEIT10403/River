//package _11.misc;
//
//import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;
//
//public class DispatcherServletRegistry 
//extends AbstractAnnotationConfigDispatcherServletInitializer{
//
//	@Override
//	protected Class<?>[] getRootConfigClasses() {
//		return new Class[] {SpringHibernateConfigure.class};
//	}
//
//	@Override
//	protected Class<?>[] getServletConfigClasses() {
//		return new Class[] {SpringMVCHibernateConfigure.class} ;
//	}
//
//	@Override
//	protected String[] getServletMappings() {
//		return new String[] {"/"};
//	}
//
//}
