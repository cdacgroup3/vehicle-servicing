package cntr;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.DispatcherServlet;

@Controller
public class HelloController {
	DispatcherServlet ds;
	@RequestMapping(value="/hello.htm")
	public String sayHello(ModelMap model) {
		model.put("msg", "Hello Spring MVC !!!!!");
		
		return "info";
	}
}
