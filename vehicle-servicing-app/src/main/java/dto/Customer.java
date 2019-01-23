package dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="customer")
public class Customer {
	@Id
	@Column(name="mobile_no")
	private Long mobileNo;
	@Column(name="customer_name")
	private String customerName;
	@Column
	private String password;
	@Column
	private String email;
	@Column
	private Integer zipcode;
	@Column
	private String address;
	
	public Customer() {
		super();
	}

	public Customer(Long mobileNo, String customerName, String password, String email, Integer zipcode,
			String address) {
		super();
		this.mobileNo = mobileNo;
		this.customerName = customerName;
		this.password = password;
		this.email = email;
		this.zipcode = zipcode;
		this.address = address;
	}

	public Long getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(Long mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
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

	public Integer getZipcode() {
		return zipcode;
	}

	public void setZipcode(Integer zipcode) {
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
		return "Customer [mobileNo=" + mobileNo + ", customerName=" + customerName + ", password=" + password
				+ ", email=" + email + ", zipcode=" + zipcode + ", address=" + address + "]";
	}
}
