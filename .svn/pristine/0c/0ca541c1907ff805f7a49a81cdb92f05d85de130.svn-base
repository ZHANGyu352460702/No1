package entity;

import java.sql.Timestamp;

/**
 * Chat entity. @author MyEclipse Persistence Tools
 */

public class Chat implements java.io.Serializable {

	// Fields

	private Integer id;
	private Customer customer;
	private Admin admin;
	private Timestamp time;
	private String content;

	// Constructors

	/** default constructor */
	public Chat() {
	}

	/** full constructor */
	public Chat(Customer customer, Admin admin, Timestamp time, String content) {
		this.customer = customer;
		this.admin = admin;
		this.time = time;
		this.content = content;
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

	public Admin getAdmin() {
		return this.admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public Timestamp getTime() {
		return this.time;
	}

	public void setTime(Timestamp time) {
		this.time = time;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}