package com.chinasoft.personalCenterRevice;

import org.hibernate.Session;
import org.hibernate.Transaction;

import session.HibernateSessionFactory;
import entity.Customer;

public class CenterService {
	
	private HibernateSessionFactory factory;
	
	
	public void setFactory(HibernateSessionFactory factory) {
		this.factory = factory;
	}

	private Session session;
	private Transaction tx;

/*	public CenterService (){
		this.session=HibernateSessionFactory.getSession();
	}*/
	
	public void updatePerson(Customer customer) {
		try {
			this.session=factory.getSession();
			System.out.println(this.session);
			this.tx = session.beginTransaction();
			session.update(customer);
			tx.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			tx.rollback();
		}
		this.session.close();
	}
	
	public Customer queryOne(Integer cid) {
		this.session = factory.getSession();
		Customer customer =  (Customer) session.get(Customer.class, cid);
		this.session.close();
		return customer;
	}
	
/*	public void queryNickname(){
		this.session=factory.getSession();
		Query query=session.createQuery("from Customer c where c.")
	}*/
	
}
