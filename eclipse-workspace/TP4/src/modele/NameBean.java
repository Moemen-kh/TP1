package modele;

import java.io.Serializable;

public class NameBean implements Serializable {

	private static final long serialVersionUID = 1L;
	private String firstName;
	private String lastName;

	public NameBean() {
		setFirstName("");
		setLastName("");
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
