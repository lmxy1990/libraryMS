package com.pan.model;

import org.springframework.stereotype.Component;

@Component
public class BookClassModel {
	private int Id ;
	private String TypeName ;
	
	
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getTypeName() {
		return TypeName;
	}
	public void setTypeName(String typeName) {
		TypeName = typeName;
	}
}
