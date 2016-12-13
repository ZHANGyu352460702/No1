package productsDetail;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import entity.Products;

import session.HibernateSessionFactory;

public class ProductsDetailService {
  
  private Session session;
  
  public Products queryOne(int productID){
	     this.session =HibernateSessionFactory.getSession();
		return (Products) this.session.get(Products.class, new Integer(productID)); 
  }
}
