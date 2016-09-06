package com.pan.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.pan.model.UserModel;

@Repository
public interface UserDao {
	//新增
	public void addUser(UserModel model) throws Exception ;
	//修改
	public void modifyUser(UserModel model) throws Exception ;
	//删除
	public void delUser(int id) throws Exception ;
	//根据证件查询
	public UserModel findUser(long no) throws Exception ;
	//根据名字查询
	public UserModel findByName(String name) throws Exception ;
	//列出所有用户
	public List<UserModel> listAllUser() throws Exception ;
}
