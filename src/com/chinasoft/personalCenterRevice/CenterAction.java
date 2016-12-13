package com.chinasoft.personalCenterRevice;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import entity.Customer;

public class CenterAction extends ActionSupport implements SessionAware{
   public  CenterService service;
   public String type;
    
   public String getType() {
	return type;
}

public void setType(String type) {
	this.type = type;
}

public CenterService getService() {
	return service;
   }

   public void setService(CenterService service) {
	this.service = service;
   }
	public CenterAction(){
		this.service=new CenterService();
	}
	
	private Customer customer;

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	
	public Map session;
	
	public String updateCustomer(){
		service.updatePerson(this.customer);
		System.out.println(customer.getCname());
		Customer c=this.service.queryOne(this.customer.getCid());
		if(c!=null){
			this.session.put("userInfo", c);
			return "personalCenter";
		}else{
			return "changeinfo";
		}
		
	}
	

	public String queryOne() {
		this.customer = service.queryOne(this.customer.getCid());
		System.out.println(customer.getCname()+" "+customer.getNickName());
		this.type = "updateCustomer";
		return "changeinfo";
	}

	@Override
	public void setSession(Map<String, Object> arg0) {
		this.session=arg0;
		
	}
	
}
