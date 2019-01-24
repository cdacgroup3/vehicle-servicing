package dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="service_center")
public class ServiceCenter {
	@Column(name="service_center_name")
	private String serviceCenterName;
	
	@Id
	@Column(name="service_center_mobile_no")
	private Long mobileNo;
	
	@Column
	private String password;
	@Column
	private String email;
	@Column
	private Integer zipcode;
	@Column
	private String address;
	@Column
	private Integer slot;
	
	public ServiceCenter() {
		super();
	}

	public ServiceCenter(String serviceCenterName, Long mobileNo, String password, String email, Integer zipcode,
			String address, Integer slot) {
		super();
		this.serviceCenterName = serviceCenterName;
		this.mobileNo = mobileNo;
		this.password = password;
		this.email = email;
		this.zipcode = zipcode;
		this.address = address;
		this.slot = slot;
	}

	public String getServiceCenterName() {
		return serviceCenterName;
	}

	public void setServiceCenterName(String serviceCenterName) {
		this.serviceCenterName = serviceCenterName;
	}

	public Long getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(Long mobileNo) {
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

	public Integer getSlot() {
		return slot;
	}

	public void setSlot(Integer slot) {
		this.slot = slot;
	}

	@Override
	public String toString() {
		return "ServiceCenter [serviceCenterName=" + serviceCenterName + ", mobileNo=" + mobileNo + ", password="
				+ password + ", email=" + email + ", zipcode=" + zipcode + ", address=" + address + ", slot=" + slot
				+ "]";
	}

	
}
