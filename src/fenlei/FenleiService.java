package fenlei;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import session.HibernateSessionFactory;

public class FenleiService {

	private Session session;
	private Transaction tx;
	
	

	public List queryProducts() {
		this.session =HibernateSessionFactory.getSession();
		Query query = session.createQuery("from Products where pname like '%´º%·çÒÂ%'");
		List list = query.list(); 
		return list;
	}
	
	public List queryProducts1() {
		this.session =HibernateSessionFactory.getSession();
		Query query = session.createQuery("from Products where pname like '%Á¬ÒÂÈ¹%'");
		List list = query.list(); 
		return list;
	}
	
	public List queryProducts2() {
		this.session =HibernateSessionFactory.getSession();
		Query query = session.createQuery("from Products where pname like '%°ëÉíÈ¹%'");
		List list = query.list(); 
		return list;
	}
	
	public List queryProducts3() {
		this.session =HibernateSessionFactory.getSession();
		Query query = session.createQuery("from Products where pname like '%Ð¡½Å¿ã%'");
		List list = query.list(); 
		return list;
	}
	
	public List queryProducts4() {
		this.session =HibernateSessionFactory.getSession();
		Query query = session.createQuery("from Products where pname like '%´òµ×¿ã%'");
		List list = query.list(); 
		return list;
	}
	
	public List queryProducts5() {
		this.session =HibernateSessionFactory.getSession();
		Query query = session.createQuery("from Products where pname like '%Å£×Ð¿ã%'");
		List list = query.list(); 
		return list;
	}
	
	public List queryProducts6() {
		this.session =HibernateSessionFactory.getSession();
		Query query = session.createQuery("from Products where pname like '%´òµ×ÉÀ%'");
		List list = query.list(); 
		return list;
	}
	
	public List queryProducts7() {
		this.session =HibernateSessionFactory.getSession();
		Query query = session.createQuery("from Products where pname like '%ÇéÂÂ×°%'");
		List list = query.list(); 
		return list;
	}
	
	public List queryProducts8() {
		this.session =HibernateSessionFactory.getSession();
		Query query = session.createQuery("from Products where pname like '%ÃÞÒÂ%'");
		List list = query.list(); 
		return list;
	}
	
	public List queryProducts9() {
		this.session =HibernateSessionFactory.getSession();
		Query query = session.createQuery("from Products where pname like '%´óÒÂ%'");
		List list = query.list(); 
		return list;
	}
	
	public List queryProducts10() {
		this.session =HibernateSessionFactory.getSession();
		Query query = session.createQuery("from Products where pname like '%Ã«ÄØ¶Ì¿ã%'");
		List list = query.list(); 
		return list;
	}
	
}
