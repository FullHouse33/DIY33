package com.sesoc.test.vo;

public class Graph4VO {

	private int count;

	private String year;
	
	private String month;

	private String company;

	public Graph4VO() {
		super();
	}

	public Graph4VO(int count, String year, String month, String company) {
		super();
		this.count = count;
		this.year = year;
		this.month = month;
		this.company = company;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	@Override
	public String toString() {
		return "Graph4VO [count=" + count + ", year=" + year + ", month=" + month + ", company=" + company + "]";
	}
	
}