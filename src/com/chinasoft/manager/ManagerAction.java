package com.chinasoft.manager;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import entity.Admin;
import entity.Customer;

public class ManagerAction extends ActionSupport implements SessionAware {

	public ManagerService service;

	public void setService(ManagerService service) {
		this.service = service;
	}

	public Customer customer;
	
	
	
	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	
	public String type;
	
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public List customers;


	public List getCustomers() {
		return customers;
	}

	public void setCustomers(List customers) {
		this.customers = customers;
	}

	public Admin admin;

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public Map session;

	public int ismanagered;

	public int getIsmanagered() {
		return ismanagered;
	}

	public void setIsmanagered(int ismanagered) {
		this.ismanagered = ismanagered;
	}

	public String login() {
		Admin a = (Admin) this.service.login(this.admin);
		if (a != null) {
			this.session.put("adminInfo", a);
			return "customer";
		} else {
			return "login";
		}
	}

	@Override
	public void setSession(Map<String, Object> arg0) {
		this.session = arg0;
	}

	public String managerCheck() {
		this.ismanagered = service.managerCheck(this.admin);
		return "ajax";
	}

	public String queryCustomer() {
		this.customers = this.service.queryCustomer(this.customer);
		return "customers";
	}
	
	public String deleteCustomer(){
		this.service.deleteCustomer(this.customer);
		return "customer";
	}
	
	public String updateCustomer(){
		this.service.updateCustomer(customer);
		return "customer";
	}
	
	public String queryOne(){
		this.customer=this.service.queryOne(this.customer.getCid());
		this.type="updateCustomer";
		return "update";
	}

	public String insertCustomer(){
		this.service.insertCustomer(customer);
		return "customer";
	}
	
	public String register() {
		return "update";
	}
}
