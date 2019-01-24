package dto;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
//@Table(name="customer_bill")
public class CustomerBill {
//	@Column(name="mobile_no")
	private Long mobileNo;
//	@Column(name="service_name")	
	private List<String> serviceName;
//	@Column(name="service_price")
	private List<String> servicePrice;
	
	private Long serviceCenterMobileNo;
	
	
	public CustomerBill() {
		super();
	}


	public CustomerBill(long mobileNo, List<String> serviceName, List<String> servicePrice,
			long serviceCenterMobileNo) {
		super();
		this.mobileNo = mobileNo;
		this.serviceName = serviceName;
		this.servicePrice = servicePrice;
		this.serviceCenterMobileNo = serviceCenterMobileNo;
	}


	public long getMobileNo() {
		return mobileNo;
	}


	public void setMobileNo(long mobileNo) {
		this.mobileNo = mobileNo;
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


	@Override
	public String toString() {
		return "CustomerBill [mobileNo=" + mobileNo + ", serviceName=" + serviceName + ", servicePrice=" + servicePrice
				+ ", serviceCenterMobileNo=" + serviceCenterMobileNo + "]";
	}

	
}

