package nanzhuang;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import session.HibernateSessionFactory;

public class NanzhuangService {

	private Session session;
	private Transaction tx;
	
	

	public List queryProducts() {
		this.session =HibernateSessionFactory.getSession();
		Query query = session.createQuery("from Products where pname like '%´º%'");
		List list = query.list(); 
		return list;
	}
	
	public List queryProducts1() {
		this.session =HibernateSessionFactory.getSession();
		Query query = session.createQuery("from Products where pname like '%ÏÄ%'");
		List list = query.list(); 
		return list;
	}
	
	public List queryProducts2() {
		this.session =HibernateSessionFactory.getSession();
		Query query = session.createQuery("from Products where pname like '%Çï%'");
		List list = query.list(); 
		return list;
	}
	
	public List queryProducts3() {
		this.session =HibernateSessionFactory.getSession();
		Query query = session.createQuery("from Products where pname like '%¶¬%'");
		List list = query.list(); 
		return list;
	}
}
