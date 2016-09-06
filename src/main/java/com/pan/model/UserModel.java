package com.pan.model;

import java.math.BigDecimal;

import org.springframework.stereotype.Component;

@Component
public class UserModel {
	private Integer Id ;
	private String Name ;
	private String Sex ;
	private Integer Age ;
	private String IDCardType ;
	private String IDCardNo ;
	private String Date ;
	private Integer MaxNum ;
	private String Tel ;
	private BigDecimal KeepMoney ;
	private String Zy ;
	
	
	
	public Integer getId() {
		return Id;
	}
	public void setId(Integer id) {
		Id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getSex() {
		return Sex;
	}
	public void setSex(String sex) {
		Sex = sex;
	}
	public Integer getAge() {
		return Age;
	}
	public void setAge(Integer age) {
		Age = age;
	}
	public String getIDCardType() {
		return IDCardType;
	}
	public void setIDCardType(String iDCardType) {
		IDCardType = iDCardType;
	}
	public String getDate() {
		return Date;
	}
	public void setDate(String date) {
		Date = date;
	}
	public Integer getMaxNum() {
		return MaxNum;
	}
	public void setMaxNum(Integer maxNum) {
		MaxNum = maxNum;
	}
	public String getZy() {
		return Zy;
	}
	public void setZy(String zy) {
		Zy = zy;
	}

	public String getIDCardNo() {
		return IDCardNo;
	}
	public void setIDCardNo(String iDCardNo) {
		IDCardNo = iDCardNo;
	}
	public BigDecimal getKeepMoney() {
		return KeepMoney;
	}
	public void setKeepMoney(BigDecimal keepMoney) {
		KeepMoney = keepMoney;
	}
	public String getTel() {
		return Tel;
	}
	public void setTel(String tel) {
		Tel = tel;
	}
	
}
