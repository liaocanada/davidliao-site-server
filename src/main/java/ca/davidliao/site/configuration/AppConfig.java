package ca.davidliao.site.configuration;

import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Description;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import org.thymeleaf.TemplateEngine;
import org.thymeleaf.spring4.SpringTemplateEngine;
import org.thymeleaf.spring4.templateresolver.SpringResourceTemplateResolver;
import org.thymeleaf.spring4.view.ThymeleafViewResolver;
import org.thymeleaf.templateresolver.ITemplateResolver;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "ca.davidliao.site")
public class AppConfig extends WebMvcConfigurerAdapter implements ApplicationContextAware {

	// @Override
	// public void configureViewResolvers(ViewResolverRegistry registry) {
	//
	// InternalResourceViewResolver viewResolver = new
	// InternalResourceViewResolver();
	// viewResolver.setViewClass(JstlView.class);
	// viewResolver.setPrefix("/WEB-INF/views/");
	// viewResolver.setSuffix(".jsp");
	// registry.viewResolver(viewResolver);
	//
	// }

	/* Thymeleaf config code start */
	private ApplicationContext applicationContext;

	public void setApplicationContext(ApplicationContext applicationContext) {
		this.applicationContext = applicationContext;
	}

	@Bean
	@Description("Thymeleaf Template Resolver")
	public ITemplateResolver templateResolver() {
		SpringResourceTemplateResolver templateResolver = new SpringResourceTemplateResolver();
		templateResolver.setPrefix("/WEB-INF/views/");
		templateResolver.setSuffix(".html");
		templateResolver.setTemplateMode("HTML5");

		return templateResolver;
	}

	@Bean
	@Description("Thymeleaf Template Engine")
	public TemplateEngine templateEngine() {
		SpringTemplateEngine templateEngine = new SpringTemplateEngine();
		templateEngine.setTemplateResolver(templateResolver());
		templateEngine.setTemplateEngineMessageSource(messageSource());
		return templateEngine;
	}

	@Bean
	public ViewResolver viewResolver() {
		ThymeleafViewResolver resolver = new ThymeleafViewResolver();
		resolver.setTemplateEngine(templateEngine());
		resolver.setCharacterEncoding("UTF-8");
		return resolver;
	}
	
	/* Thymeleaf config code end */

	
	/**
	 * Configure the resource handlers to find static resources, including images,
	 * CSS, and JavaScript.
	 */
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		// Resources are in this directory
		registry.addResourceHandler("/static/**").addResourceLocations("/static/");
	}

	/**
	 * Configure MessageSource to lookup validation/error messages in
	 * messages.properties
	 */
	@Bean
	public MessageSource messageSource() {
		ResourceBundleMessageSource messageSource = new ResourceBundleMessageSource();
		// Sets messages.properties as the file containing custom messages
		messageSource.setBasename("messages");
		return messageSource;
	}

}
