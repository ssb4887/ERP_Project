package com.erp.vo;

public class Department {
	private String 	dept_num;
	private String 	dept_name;
	private String 	dept_tel;
	private int auth_sales;
	private int auth_salesList;
	private int auth_clients;
	private int auth_orders;
	private int auth_supplier;
	private int auth_product;
	private int auth_accounting;
	
	public Department() {}

	public Department(String dept_num, String dept_name, String dept_tel, int auth_sales, int auth_salesList, int auth_clients, int auth_orders,
			int auth_supplier, int auth_product, int auth_accounting) {
		this.dept_num = dept_num;
		this.dept_name = dept_name;
		this.dept_tel = dept_tel;
		this.auth_sales = auth_sales;
		this.auth_salesList = auth_salesList;
		this.auth_clients = auth_clients;
		this.auth_orders = auth_orders;
		this.auth_supplier = auth_supplier;
		this.auth_product = auth_product;
		this.auth_accounting = auth_accounting;
	}

	public String getDept_num() {
		return dept_num;
	}

	public void setDept_num(String dept_num) {
		this.dept_num = dept_num;
	}

	public String getDept_name() {
		return dept_name;
	}

	public void setDept_name(String dept_name) {
		this.dept_name = dept_name;
	}

	public String getDept_tel() {
		return dept_tel;
	}

	public void setDept_tel(String dept_tel) {
		this.dept_tel = dept_tel;
	}

	public int getAuth_sales() {
		return auth_sales;
	}

	public void setAuth_sales(int auth_sales) {
		this.auth_sales = auth_sales;
	}

	public int getAuth_salesList() {
		return auth_salesList;
	}

	public void setAuth_salesList(int auth_salesList) {
		this.auth_salesList = auth_salesList;
	}

	public int getAuth_clients() {
		return auth_clients;
	}

	public void setAuth_clients(int auth_clients) {
		this.auth_clients = auth_clients;
	}

	public int getAuth_orders() {
		return auth_orders;
	}

	public void setAuth_orders(int auth_orders) {
		this.auth_orders = auth_orders;
	}

	public int getAuth_supplier() {
		return auth_supplier;
	}

	public void setAuth_supplier(int auth_supplier) {
		this.auth_supplier = auth_supplier;
	}

	public int getAuth_product() {
		return auth_product;
	}
 
	public void setAuth_product(int auth_product) {
		this.auth_product = auth_product;
	}

	public int getAuth_accounting() {
		return auth_accounting;
	}

	public void setAuth_accounting(int auth_accounting) {
		this.auth_accounting = auth_accounting;
	}

}
