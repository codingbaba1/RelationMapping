package com.cebs.beans;

public class Person 
{
	private int id;
	private String name;
	private IDProof []docs;
	
	
	
	public IDProof[] getDocs() {
		return docs;
	}
	public void setDocs(IDProof[] docs) {
		this.docs = docs;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
