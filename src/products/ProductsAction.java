package products;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Session;

import com.opensymphony.xwork2.ActionSupport;

public class ProductsAction extends ActionSupport implements SessionAware {

	private List products;
	private String pageCount = "8";
	private String currentPage;
	private int counts;
	private String type;
	private String search;

	private Map session;

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getPageCount() {
		return pageCount;
	}

	public String getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(String currentPage) {
		this.currentPage = currentPage;
	}

	public List getProducts() {
		return products;
	}

	public void setProducts(List products) {
		this.products = products;
	}

	private ProductsService service;

	public void setService(ProductsService service) {
		this.service = service;
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	
	public int getCounts() {
		return counts;
	}

	public void setCounts(int counts) {
		this.counts = counts;
	}

	public String queryProduct() throws Exception {
		this.products = (List) this.service.queryProducts();
		//将查到的数据放到session里，重定向到页面就可以直接拿到；转发会丢失数据
		this.session.put("products", this.products);
		return "Shouye";
	}

	
	
	public String queryProductsByPage() {
		this.products = this.service.queryFenye(pageCount, currentPage, search);
		double countsa=this.service.count(search)/Double.valueOf(this.pageCount);
		//整型除以整型会丢失精度！！！
		this.counts= (int) Math.ceil(countsa);	
		return "Liebiao";
		
	}

	/*
	 * public String fenye() throws Exception{ //如果传过来的type为""的话 就让它等于first
	 * if("".equals(type)||type == null){ type = "first"; }
	 * //如果传过来的页面为null的话就让它等于1 if(currentPage == null||"".equals(currentPage)){
	 * currentPage = "1"; } if(this.search==null){ this.search="";
	 * this.products=(List) this.service.queryFenye(this.pageCount,
	 * this.currentPage,this.search); return "Liebiao"; }else
	 * if(this.search!=null){
	 * 
	 * } return "Liebiao"; }
	 */
	

	@Override
	public void setSession(Map<String, Object> arg0) {
		this.session = arg0;

	}
}
