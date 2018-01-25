package net.team7.shoppingbackend.dto;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.stereotype.Component;

@Entity
@Table(name = "contact_form")
public class ContactForm implements Serializable {

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public Date getCreated_at() {
		return created_at;
	}

	public void setCreated_at(Date created_at) {
		this.created_at = new Date();
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@NotBlank(message = "Please enter name!")
	private String name;

	@NotBlank(message = "Please enter email address!")
	private String email;

	// @NotBlank(message = "Please enter contact number!")

    @Size(min=10,max=10,message = "Please enter valid contact number!")
	private String phone;
	
	@NotBlank(message = "Please enter comments!")
	private String comments;

	private Date created_at;

	public ContactForm() {
	}

	@Override
	public String toString() {
		return "ContactForm [id=" + id + ", name=" + name + ", email=" + email + ", phone=" + phone + ", comments="
				+ comments + ", created_at=" + created_at + "]";
	}

}
