package net.team7.onlineshopping.model;

import java.io.Serializable;

import net.team7.shoppingbackend.dto.Cart;

public class UserModel implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int id;
	private String fullName;
	private String role;
	private boolean member;
	private String email;
	
	public String getEmail() {
		return email;
	}
	public boolean isMember() {
		
		return member;
	}
	public void setMember(boolean member) {
		this.member = member;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	private Cart cart;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
		
}
