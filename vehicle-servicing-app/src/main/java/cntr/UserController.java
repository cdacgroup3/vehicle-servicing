package cntr;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.DispatcherServlet;

import dao.CustomerDao;
import dto.Customer;
import dto.CustomerBill;
import dto.CustomerCar;
import dto.ServiceCenter;

@Controller
@SessionAttributes({"customerCar", "serviceType"})
public class UserController {
	@Autowired
	private CustomerDao customerDao;
	
	DispatcherServlet ds;
	String referrer;
	
	@RequestMapping(value="/home.htm")
	public String selectCarModel(ModelMap model, HttpServletRequest request) {	
		model.put("customerCar", new CustomerCar());
		return "index";
	}
	
	@RequestMapping(value="/login.htm")
	public String prepareLoginForm(ModelMap model, HttpServletRequest request) {
		model.put("customer", new Customer());
		model.put("serviceCenter", new ServiceCenter());
		referrer = request.getHeader("referer");
		return "login-form";
	}
	
	@RequestMapping(value="/login-check.htm")
	public String login(Customer customer, ModelMap model, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		List<Customer> list = customerDao.login(customer);
		if(list.isEmpty()) {
			model.put("customer", new Customer());
			model.put("serviceCenter", new ServiceCenter());
			return "login-form";
		} else {
			session = request.getSession();
			session.setAttribute("customer", customer);		
			try {
				response.sendRedirect(referrer);
			} catch (IOException e) {
				e.printStackTrace();
			}		
			return null;
		}
	}
	
	@RequestMapping(value="/center-login-check.htm")
	public String serviceCenterLogin(ServiceCenter serviceCenter, ModelMap model, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		List<ServiceCenter> list = customerDao.loginServiceCenter(serviceCenter);
		if(list.isEmpty()) {
			model.put("customer", new Customer());
			model.put("serviceCenter", new ServiceCenter());
			return "login-form";
		} else {
			session = request.getSession();
			session.setAttribute("serviceCenter", serviceCenter);		
			try {
				response.sendRedirect(referrer);
			} catch (IOException e) {
				e.printStackTrace();
			}		
			return null;
		}
	}
	
	
	@RequestMapping(value="/signout.htm")
	public void signout(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		session = request.getSession();
		session.invalidate(); 
		request.getSession(true);
		try {
			response.sendRedirect(request.getContextPath() + "/home.htm");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}		
	
	@RequestMapping(value="/registration.htm")
	public String prepareRegistrationForm(ModelMap model) {
		model.put("customer", new Customer());
		model.put("serviceCenter", new ServiceCenter());
		return "registration-form";
	}
	
	@RequestMapping(value="/performRegistration.htm")
	public void performRegistration(Customer customer, HttpServletRequest request, HttpServletResponse response) {
		customerDao.createUser(customer);		
		try {
			response.sendRedirect(request.getContextPath() + "/login.htm");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value="/performServiceCenterRegistration.htm")
	public String performServiceCenterRegistration(ServiceCenter serviceCenter) {
		customerDao.createServiceCenter(serviceCenter);
		return "index";
	}
	
	
	@RequestMapping(value="/select-service.htm")
	public String selectService(CustomerCar customerCar) {
		return "select-service";
	}
	
	@RequestMapping(value="/servicing.htm")
	public void selectServicing(ModelMap model, HttpServletRequest request, HttpServletResponse response) {
		model.put("serviceType", "servicing");
		try {
			response.sendRedirect(request.getContextPath() + "/book-service.htm");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@RequestMapping(value="/repairing.htm")
	public void selectRepairing(ModelMap model, HttpServletRequest request, HttpServletResponse response) {
		model.put("serviceType", "repairing");
		try {
			response.sendRedirect(request.getContextPath() + "/book-service.htm");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value="/denting.htm")
	public void selectDenting(ModelMap model, HttpServletRequest request, HttpServletResponse response) {
		model.put("serviceType", "denting");
		try {
			response.sendRedirect(request.getContextPath() + "/book-service.htm");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value="/emergency.htm")
	public void selectEmergency(ModelMap model, HttpServletRequest request, HttpServletResponse response) {
		model.put("serviceType", "emergency");
		try {
			response.sendRedirect(request.getContextPath() + "/book-service.htm");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value="/book-service.htm")
	public String bookService(ModelMap model) {
		model.put("customerBill", new CustomerBill());
		return "book-service";
	}
	
	@RequestMapping(value="/checkout-login.htm", method = RequestMethod.POST)
	public void showServiceCenter(CustomerBill bill, HttpServletRequest request, HttpServletResponse response, HttpSession session) {								
		session = request.getSession();
		List<String> serviceNameList = bill.getServiceName();
		List<String> servicePriceList = bill.getServicePrice();
		
		if(serviceNameList.size()>0 && servicePriceList.size()>0) {
			serviceNameList.remove(0);			
			servicePriceList.remove(0);		
			session.setAttribute("customerBill", bill);
		}	
		
		if(session.getAttribute("customer") == null) {
			try {
				response.sendRedirect(request.getContextPath() + "/login.htm");
			} catch (IOException e) {
				e.printStackTrace();
			}
		} else {
			try {
				/*long mobileNo = ((Customer) session.getAttribute("customer")).getMobileNo();
				bill.setMobileNo(mobileNo);*/
				
				response.sendRedirect(request.getContextPath() + "/pick-service-center.htm");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}		
	}
	
	@RequestMapping(value="/pick-service-center.htm")
	public String selectServiceCenter(ModelMap model, HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		session = request.getSession();
		Customer customer = (Customer) session.getAttribute("customer");
		List<ServiceCenter> serviceCenters = customerDao.showServiceCenterByZip(customer);
		model.put("serviceCenters", serviceCenters);
		model.put("customerBill", session.getAttribute("customerBill"));
		return "pick-service-center";
	}
	
	@RequestMapping(value="/confirm-order.htm")
	public String confirmOrder() {
		return "confirm-order";
	}
}
