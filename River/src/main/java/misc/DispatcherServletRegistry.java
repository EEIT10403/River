package misc;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import DaytourProduct.misc.SpringMvcJavaConfiguration;

import _21_traveling.misc.SpringMVCConfiguration;

//記得刪除web.xml內部關於DispatcherServlet、ContextLoaderListener的設定標籤
public class DispatcherServletRegistry
				extends AbstractAnnotationConfigDispatcherServletInitializer {
	@Override
	protected Class<?>[] getRootConfigClasses() {
		return new Class[] {SpringJavaConfiguration.class};
	}
	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class[] {SpringMvcJavaConfiguration.class,SpringMVCConfiguration.class};
		}

	@Override
	protected String[] getServletMappings() {
		return new String[] {"/"};
	}
}
