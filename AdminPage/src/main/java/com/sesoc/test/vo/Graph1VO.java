package com.sesoc.test.vo;

public class Graph1VO {

	private int count;

	private String year;

	private String company;

	public Graph1VO() {
		super();
	}

	public Graph1VO(int count, String year, String company) {
		super();
		this.count = count;
		this.year = year;
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

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	@Override
	public String toString() {
		return "Graph1VO [count=" + count + ", year=" + year + ", company=" + company + "]";
	}
	
}