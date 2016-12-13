package entity;

/**
 * Orderdetails entity. @author MyEclipse Persistence Tools
 */

public class Orderdetails implements java.io.Serializable {

	// Fields

	private Integer id;
	private Products products;
	private Orders orders;
	private Double unitPrice;
	private Integer quantity;

	// Constructors

	/** default constructor */
	public Orderdetails() {
	}

	/** full constructor */
	public Orderdetails(Products products, Orders orders, Double unitPrice,
			Integer quantity) {
		this.products = products;
		this.orders = orders;
		this.unitPrice = unitPrice;
		this.quantity = quantity;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Products getProducts() {
		return this.products;
	}

	public void setProducts(Products products) {
		this.products = products;
	}

	public Orders getOrders() {
		return this.orders;
	}

	public void setOrders(Orders orders) {
		this.orders = orders;
	}

	public Double getUnitPrice() {
		return this.unitPrice;
	}

	public void setUnitPrice(Double unitPrice) {
		this.unitPrice = unitPrice;
	}

	public Integer getQuantity() {
		return this.quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

}