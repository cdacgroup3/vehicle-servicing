package dto;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="customer_bill")
public class CustomerBill {
	@Id
	@Column(name="bill_id")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int billId;
	
	@OneToOne()
	@JoinColumn(name="mobile_no")
	private Customer customer;
	
	@OneToOne()
	@JoinColumn(name="service_center_mobile_no")
	private ServiceCenter serviceCenter;
	
	@Column(name="service_name")
	@ElementCollection(fetch = FetchType.EAGER)
	private List<String> serviceName;
	
	@Column(name="service_price")
	@ElementCollection(fetch = FetchType.EAGER)
	private List<String> servicePrice;	
	
	@Column(name="total_price")
	private int totalPrice;
	
	public CustomerBill() {
		super();
	}

	public CustomerBill(int billId, Customer customer, ServiceCenter serviceCenter, List<String> serviceName,
			List<String> servicePrice, int totalPrice) {
		super();
		this.billId = billId;
		this.customer = customer;
		this.serviceCenter = serviceCenter;
		this.serviceName = serviceName;
		this.servicePrice = servicePrice;
		this.totalPrice = totalPrice;
	}

	public int getBillId() {
		return billId;
	}

	public void setBillId(int billId) {
		this.billId = billId;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public ServiceCenter getServiceCenter() {
		return serviceCenter;
	}

	public void setServiceCenter(ServiceCenter serviceCenter) {
		this.serviceCenter = serviceCenter;
	}

	public List<String> getServiceName() {
		return serviceName;
	}

	public void setServiceName(List<String> serviceName) {
		this.serviceName = serviceName;
	}

	public List<String> getServicePrice() {
		return servicePrice;
	}

	public void setServicePrice(List<String> servicePrice) {
		this.servicePrice = servicePrice;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	@Override
	public String toString() {
		return "CustomerBill [billId=" + billId + ", customer=" + customer + ", serviceCenter=" + serviceCenter
				+ ", serviceName=" + serviceName + ", servicePrice=" + servicePrice + ", totalPrice=" + totalPrice
				+ "]";
	}
	
	

	/*public CustomerBill(long customerMobileNo, List<String> serviceName, List<String> servicePrice,
			long serviceCenterMobileNo, int totalPrice) {
		super();
		this.customerMobileNo = customerMobileNo;
		this.serviceName = serviceName;
		this.servicePrice = servicePrice;
		this.serviceCenterMobileNo = serviceCenterMobileNo;
		this.totalPrice = totalPrice;
	}

	public long getCustomerMobileNo() {
		return customerMobileNo;
	}

	public void setCustomerMobileNo(long customerMobileNo) {
		this.customerMobileNo = customerMobileNo;
	}

	public List<String> getServiceName() {
		return serviceName;
	}

	public void setServiceName(List<String> serviceName) {
		this.serviceName = serviceName;
	}

	public List<String> getServicePrice() {
		return servicePrice;
	}

	public void setServicePrice(List<String> servicePrice) {
		this.servicePrice = servicePrice;
	}

	public long getServiceCenterMobileNo() {
		return serviceCenterMobileNo;
	}

	public void setServiceCenterMobileNo(long serviceCenterMobileNo) {
		this.serviceCenterMobileNo = serviceCenterMobileNo;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	@Override
	public String toString() {
		return "CustomerBill [customerMobileNo=" + customerMobileNo + ", serviceName=" + serviceName + ", servicePrice="
				+ servicePrice + ", serviceCenterMobileNo=" + serviceCenterMobileNo + ", totalPrice=" + totalPrice
				+ "]";
	}*/
	
	
}

