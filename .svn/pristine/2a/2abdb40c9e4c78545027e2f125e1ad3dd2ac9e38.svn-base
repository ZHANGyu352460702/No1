package entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Address entity. @author MyEclipse Persistence Tools
 */

public class Address implements java.io.Serializable {

	// Fields

	private Integer aid;
	private Customer customer;
	private String caddress;
	private String name;
	private String phone;
	private Set orderses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Address() {
	}

	/** full constructor */
	public Address(Customer customer, String caddress, String name,
			String phone, Set orderses) {
		this.customer = customer;
		this.caddress = caddress;
		this.name = name;
		this.phone = phone;
		this.orderses = orderses;
	}

	// Property accessors

	public Integer getAid() {
		return this.aid;
	}

	public void setAid(Integer aid) {
		this.aid = aid;
	}

	public Customer getCustomer() {
		return this.customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public String getCaddress() {
		return this.caddress;
	}

	public void setCaddress(String caddress) {
		this.caddress = caddress;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Set getOrderses() {
		return this.orderses;
	}

	public void setOrderses(Set orderses) {
		this.orderses = orderses;
	}

}