package productsDetail;

import com.opensymphony.xwork2.ActionSupport;

import entity.Products;

public class ProductsDetailAction extends ActionSupport {
	private ProductsDetailService service;
	private int pid;
	private Products product;
	
	public void setProducts(Products products) {
		this.product = products;
	}
	
	public Products getProduct() {
		return product;
	}

	public void setService(ProductsDetailService service) {
		this.service = service;
	}

	public void setPid(int pid) {
		this.pid = pid;
		System.out.println(this.pid);
	}

	public int getPid() {
		return pid;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		 this.product = this.service.queryOne(this.pid);
		return "Neirong";
	}
}
