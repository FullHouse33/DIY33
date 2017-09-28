package com.sesoc.test.vo;

public class Graph2VO {

	private String coname;
	
	private int furniturenum;

	private String type;
	
	private int count;

	public Graph2VO() {
		super();
	}

	public Graph2VO(String coname, int furniturenum, String type, int count) {
		super();
		this.coname = coname;
		this.furniturenum = furniturenum;
		this.type = type;
		this.count = count;
	}

	public String getConame() {
		return coname;
	}

	public void setConame(String coname) {
		this.coname = coname;
	}

	public int getFurniturenum() {
		return furniturenum;
	}

	public void setFurniturenum(int furniturenum) {
		this.furniturenum = furniturenum;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "Graph2VO [coname=" + coname + ", furniturenum=" + furniturenum + ", type=" + type + ", count=" + count
				+ "]";
	}

}