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

import dto.Customer;
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
}
