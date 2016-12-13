package nanzhuang;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import products.ProductsService;

public class NanzhuangAction extends ActionSupport {

	private String type;
	private String search;
	private List products;	
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	public List getProducts() {
		return products;
	}
	public void setProducts(List products) {
		this.products = products;
	}
    
	
	
	

	private NanzhuangService service;
	
	public void setService(NanzhuangService service) {
		this.service = service;
	}
	
	
	
	public String queryProducts() throws Exception {
		this.products = (List) this.service.queryProducts();
		return "chun";
	} 
	
	public String queryProducts1() throws Exception {
		this.products = (List) this.service.queryProducts1();
		
		return "xia";
	} 
	
	public String queryProducts2() throws Exception {
		this.products = (List) this.service.queryProducts2();
		
		return "qiu";
	}
	
	public String queryProducts3() throws Exception {
		this.products = (List) this.service.queryProducts3();
		
		return "dong";
	}
	
	
}
