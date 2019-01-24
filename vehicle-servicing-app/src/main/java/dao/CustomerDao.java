package dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import dto.Customer;
import dto.CustomerBill;
import dto.ServiceCenter;

@Repository
public class CustomerDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;

	public CustomerDao() {
		super();
	}

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	public void createUser(final Customer customer) {
		hibernateTemplate.execute(new HibernateCallback<List<Customer>>() {
			public List<Customer> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				session.save(customer);
				t.commit();
				session.flush();
				session.close();
				return null;
			}
		});
	}
	
	public void createServiceCenter(final ServiceCenter serviceCenter) {
		hibernateTemplate.execute(new HibernateCallback<List<ServiceCenter>>() {
			public List<ServiceCenter> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				session.save(serviceCenter);
				t.commit();
				session.flush();
				session.close();
				return null;
			}
		});
	}
	
	public void createBill(final CustomerBill customerBill) {
		hibernateTemplate.execute(new HibernateCallback<List<ServiceCenter>>() {
			public List<ServiceCenter> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				session.save(customerBill);
				t.commit();
				session.flush();
				session.close();
				return null;
			}
		});
	}
	
	public List<Customer> login(Customer customer) {
		List<Customer> list = hibernateTemplate.execute(new HibernateCallback<List<Customer>>() {
			public List<Customer> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				Query q = session.createQuery("from Customer where customerName = ? and password = ?");
				q.setString(0, customer.getCustomerName());
				q.setString(1, customer.getPassword());
				List<Customer> ul = q.list();
				t.commit();
				session.flush();
				session.close();
				return ul;
			}
		});
		return list;
	}
	
	public List<ServiceCenter> loginServiceCenter(ServiceCenter serviceCenter) {
		List<ServiceCenter> list = hibernateTemplate.execute(new HibernateCallback<List<ServiceCenter>>() {
			public List<ServiceCenter> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				Query q = session.createQuery("from ServiceCenter where serviceCenterName = ? and password = ?");
				q.setString(0, serviceCenter.getServiceCenterName());
				q.setString(1, serviceCenter.getPassword());
				List<ServiceCenter> ul = q.list();
				t.commit();
				session.flush();
				session.close();
				return ul;
			}
		});
		return list;
	}
	
	public List<Customer> showCustomerByName(String customerName) {
		List<Customer> list = hibernateTemplate.execute(new HibernateCallback<List<Customer>>() {
			public List<Customer> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				Query q = session.createQuery("from Customer where customerName = ?");
				q.setString(0, customerName);
				List<Customer> ul = q.list();
				System.out.println(ul);
				
				t.commit();
				session.flush();
				session.close();
				return ul;
			}
		});
		return list;
	}
	
	public List<ServiceCenter> showServiceCenterByMobileNo(Long serviceCenterMobileNo) {
		List<ServiceCenter> list = hibernateTemplate.execute(new HibernateCallback<List<ServiceCenter>>() {
			public List<ServiceCenter> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				Query q = session.createQuery("from ServiceCenter where mobileNo = ?");
				q.setLong(0, serviceCenterMobileNo);
				List<ServiceCenter> ul = q.list();
				
				t.commit();
				session.flush();
				session.close();
				return ul;
			}
		});
		return list;
	}
	
	public List<ServiceCenter> showServiceCenterByZip(Customer customer) {
		List<ServiceCenter> list = hibernateTemplate.execute(new HibernateCallback<List<ServiceCenter>>() {
			public List<ServiceCenter> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				Query q1 = session.createQuery("from Customer where customerName = ? and password = ?");
				q1.setString(0, customer.getCustomerName());
				q1.setString(1, customer.getPassword());
				List<Customer> ul1 = q1.list();
				int customerZipcode = ul1.get(0).getZipcode();				
				
				Query q2 = session.createQuery("from ServiceCenter where zipcode = ?");
				q2.setInteger(0, customerZipcode);
				List<ServiceCenter> ul2 = q2.list();
				
				t.commit();
				session.flush();
				session.close();
				return ul2;
			}
		});
		return list;
	}	

	
	public List<CustomerBill> getCustomerOrders(Long mobileNo) {
		List<CustomerBill> list = hibernateTemplate.execute(new HibernateCallback<List<CustomerBill>>() {
			public List<CustomerBill> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				Query q = session.createQuery("from CustomerBill where mobile_no=?");
				q.setLong(0, mobileNo);
				List<CustomerBill> ul = q.list();
				
				t.commit();
				session.flush();
				session.close();
				return ul;
			}
		});
		return list;
	}
}
