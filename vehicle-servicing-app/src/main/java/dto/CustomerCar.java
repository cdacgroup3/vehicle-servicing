package dto;

import javax.persistence.Entity;

@Entity
public class CustomerCar {
	private String carBrand;
	private String carModel;
	
	public CustomerCar() {
		super();
	}

	public CustomerCar(String carBrand, String carModel) {
		super();
		this.carBrand = carBrand;
		this.carModel = carModel;
	}

	public String getCarBrand() {
		return carBrand;
	}

	public void setCarBrand(String carBrand) {
		this.carBrand = carBrand;
	}

	public String getCarModel() {
		return carModel;
	}

	public void setCarModel(String carModel) {
		this.carModel = carModel;
	}

	@Override
	public String toString() {
		return "CustomerCar [carBrand=" + carBrand + ", carModel=" + carModel + "]";
	}
}
