package net.team7.shoppingbackend.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Attributes {

private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY) 
	private int id;
	private int pid;
	private String att_key;
	private String att_value;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getAtt_key() {
		return att_key;
	}
	public void setAtt_key(String att_key) {
		this.att_key = att_key;
	}
	public String getAtt_value() {
		return att_value;
	}
	public void setAtt_value(String att_value) {
		this.att_value = att_value;
	}
	
}
