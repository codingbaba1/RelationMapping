package com.cebs.beans;

public class IDProof 
{
	private int no;
	private String type;
	public IDProof(int no,String type)
	{
		this.no=no;
		this.type=type;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
}
