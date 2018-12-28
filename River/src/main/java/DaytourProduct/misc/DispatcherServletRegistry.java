package DaytourProduct.misc;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

//記得刪除web.xml內部關於DispatcherServlet、ContextLoaderListener的設定標籤
public class DispatcherServletRegistry
				extends AbstractAnnotationConfigDispatcherServletInitializer {
	@Override
	protected Class<?>[] getRootConfigClasses() {
		return new Class[] {SpringJavaConfiguration.class};
	}
	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class[] {SpringMvcJavaConfiguration.class};
	}
	@Override
	protected String[] getServletMappings() {
		return new String[] {"/"};
	}
}
