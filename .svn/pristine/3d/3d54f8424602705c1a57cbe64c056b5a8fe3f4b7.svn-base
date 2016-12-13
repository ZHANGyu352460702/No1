package com.chinasoft.manager;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import entity.Admin;
import entity.Customer;

import session.HibernateSessionFactory;

public class ManagerService {
	public Transaction tx;

	public Session session;

	public HibernateSessionFactory factory;

	public void setFactory(HibernateSessionFactory factory) {
		this.factory = factory;
	}

	public Object login(Admin admin) {
		this.session = factory.getSession();
		Query query = session.createQuery("from Admin where name='"
				+ admin.getName() + "' and password='" + admin.getPassword()
				+ "'");
		return query.uniqueResult();
	}

	public int managerCheck(Admin admin) {
		this.session = factory.getSession();
		Query query = session.createQuery("from Admin where name='"
				+ admin.getName() + "'");
		List list = query.list();
		int result = list.size();
		return result;
	}

	public List queryCustomer(Customer customer) {
		this.session = factory.getSession();
		Query query = session.createQuery("from Customer");
		List list = query.list();
		return list;
	}

	public void deleteCustomer(Customer customer) {
		try {
			this.session = factory.getSession();
			this.tx = session.beginTransaction();
			session.delete(customer);
			tx.commit();
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			tx.rollback();
		}
		this.session.close();
	}

	public void updateCustomer(Customer customer) {
		try {
			this.session = factory.getSession();
			this.tx = session.beginTransaction();
			session.update(customer);
			tx.commit();
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			tx.rollback();
		}
		this.session.close();
	}

	public Customer queryOne(Integer cid) {
		this.session = factory.getSession();
		Customer c = (Customer) session.get(Customer.class, cid);
		this.session.close();
		return c;
	}

	public void insertCustomer(Customer customer) {
		try {
			this.session = factory.getSession();
			this.tx = session.beginTransaction();
			session.save(customer);
			tx.commit();
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			tx.rollback();
		}
		this.session.close();
	}
				
}
