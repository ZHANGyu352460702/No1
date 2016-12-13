package entity;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Orders entity. @author MyEclipse Persistence Tools
 */

public class Orders implements java.io.Serializable {

	// Fields

	private String oid;
	private Address address;
	private Customer customer;
	private Timestamp otime;
	private Integer state;
	private Set orderdetailses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Orders() {
	}

	/** minimal constructor */
	public Orders(String oid) {
		this.oid = oid;
	}

	/** full constructor */
	public Orders(String oid, Address address, Customer customer,
			Timestamp otime, Integer state, Set orderdetailses) {
		this.oid = oid;
		this.address = address;
		this.customer = customer;
		this.otime = otime;
		this.state = state;
		this.orderdetailses = orderdetailses;
	}

	// Property accessors

	public String getOid() {
		return this.oid;
	}

	public void setOid(String oid) {
		this.oid = oid;
	}

	public Address getAddress() {
		return this.address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public Customer getCustomer() {
		return this.customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Timestamp getOtime() {
		return this.otime;
	}

	public void setOtime(Timestamp otime) {
		this.otime = otime;
	}

	public Integer getState() {
		return this.state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public Set getOrderdetailses() {
		return this.orderdetailses;
	}

	public void setOrderdetailses(Set orderdetailses) {
		this.orderdetailses = orderdetailses;
	}

}