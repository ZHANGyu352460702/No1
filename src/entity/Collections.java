package entity;

import java.sql.Timestamp;

/**
 * Collections entity. @author MyEclipse Persistence Tools
 */

public class Collections implements java.io.Serializable {

	// Fields

	private Integer id;
	private Customer customer;
	private Products products;
	private Timestamp time;

	// Constructors

	/** default constructor */
	public Collections() {
	}

	/** full constructor */
	public Collections(Customer customer, Products products, Timestamp time) {
		this.customer = customer;
		this.products = products;
		this.time = time;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Customer getCustomer() {
		return this.customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Products getProducts() {
		return this.products;
	}

	public void setProducts(Products products) {
		this.products = products;
	}

	public Timestamp getTime() {
		return this.time;
	}

	public void setTime(Timestamp time) {
		this.time = time;
	}

}