package dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="customer")
public class Customer {
	@Column(name="customer_name")
	private String customerName;
	@Id
	@Column(name="mobile_no")
	private long mobileNo;
	@Column
	private String password;
	@Column
	private String email;
	@Column
	private int zipcode;
	@Column
	private String address;
	
	public Customer() {
		super();
	}

	public Customer(String customerName, long mobileNo, String password, String email, int zipcode, String address) {
		super();
		this.customerName = customerName;
		this.mobileNo = mobileNo;
		this.password = password;
		this.email = email;
		this.zipcode = zipcode;
		this.address = address;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public long getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(long mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getZipcode() {
		return zipcode;
	}

	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "Customer [customerName=" + customerName + ", mobileNo=" + mobileNo + ", password=" + password
				+ ", email=" + email + ", zipcode=" + zipcode + ", address=" + address + "]";
	}
	
	
}
