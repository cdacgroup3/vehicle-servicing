package cntr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.DispatcherServlet;

import dao.CustomerDao;
import dto.Customer;
import dto.CustomerCar;
import dto.ServiceCenter;

@Controller
public class UserController {
	@Autowired
	private CustomerDao customerDao;
	
	DispatcherServlet ds;
	
	@RequestMapping(value="/home.htm")
	public String selectCarModel(ModelMap model) {		
		model.put("customerCar", new CustomerCar());
		return "index";
	}
	
	@RequestMapping(value="/select-service.htm")
	public String selectService(CustomerCar customerCar) {
		return "select-service";
	}
	
	@RequestMapping(value="/book-service.htm")
	public String bookService(CustomerCar customerCar) {
		return "book-service";
	}
	
	@RequestMapping(value="/login.htm")
	public String prepareLoginForm(ModelMap model) {
		model.put("customer", new Customer());
		return "login-form";
	}
	
	@RequestMapping(value="/login-check.htm")
	public String login(Customer customer, ModelMap model) {
		List<Customer> list = customerDao.login(customer);
		if(list.isEmpty()) {
			System.out.println("in ctrlr empty" + customer);
			return "login-form";
		} else {
			System.out.println("in ctrlr row" + customer);
			return "book-service";
		}
	}
	
	@RequestMapping(value="/registration.htm")
	public String prepareRegistrationForm(ModelMap model) {
		model.put("customer", new Customer());
		model.put("serviceCenter", new ServiceCenter());
		return "registration-form";
	}
	
	@RequestMapping(value="/performRegistration.htm")
	public String performRegistration(Customer customer) {
		customerDao.createUser(customer);
		return "book-service";
	}
	
	@RequestMapping(value="/performServiceCenterRegistration.htm")
	public String performServiceCenterRegistration(ServiceCenter serviceCenter) {
		customerDao.createServiceCenter(serviceCenter);
		return "book-service";
	}
}
