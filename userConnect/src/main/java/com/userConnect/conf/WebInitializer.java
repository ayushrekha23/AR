package com.userConnect.conf;

import javax.servlet.Servlet;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration.Dynamic;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;
//extends AbstractAnnotationConfigDispatcherServletInitializer {
public class WebInitializer implements WebApplicationInitializer{

	public void onStartup(ServletContext servletContext) throws ServletException {
		AnnotationConfigWebApplicationContext container = new AnnotationConfigWebApplicationContext();
		container.register(UcConfig.class);
		container.setServletContext(servletContext);
		Dynamic servlet = servletContext.addServlet("spring", new DispatcherServlet(container));
		servlet.addMapping("/");
		servlet.setLoadOnStartup(3);
		
	}

	/*@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		// TODO Auto-generated method stub
		return new Class[] {UcConfig.class};
	}

	@Override
	protected String[] getServletMappings() {
		// TODO Auto-generated method stub
		return new String[] {"/"};
	}*/

}
