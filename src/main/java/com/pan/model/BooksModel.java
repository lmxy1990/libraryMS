package com.pan.model;

import java.math.BigDecimal;

import org.springframework.stereotype.Component;

@Component
public class BooksModel {
	
	private Long ISBN ;
	private Integer Typeld  ;
	private String BookName ;
	private String Writer ;
	private String Translater ;
	private String Publisher ;
	private String Date ;
	private BigDecimal Price ;
	
	
	
	
	
	
	public Long getISBN() {
		return ISBN;
	}
	public void setISBN(Long iSBN) {
		ISBN = iSBN;
	}
	public Integer getTypeld() {
		return Typeld;
	}
	public void setTypeld(Integer typeld) {
		Typeld = typeld;
	}
	public String getBookName() {
		return BookName;
	}
	public void setBookName(String bookName) {
		BookName = bookName;
	}
	public String getWriter() {
		return Writer;
	}
	public void setWriter(String writer) {
		Writer = writer;
	}
	public String getTranslater() {
		return Translater;
	}
	public void setTranslater(String translater) {
		Translater = translater;
	}
	public String getPublisher() {
		return Publisher;
	}
	public void setPublisher(String publisher) {
		Publisher = publisher;
	}
	public String getDate() {
		return Date;
	}
	public void setDate(String date) {
		Date = date;
	}
	public BigDecimal getPrice() {
		return Price;
	}
	public void setPrice(BigDecimal price) {
		Price = price;
	}
}
