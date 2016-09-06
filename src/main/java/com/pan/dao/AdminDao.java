package com.pan.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import com.pan.model.AdminModel;

@Repository
public interface AdminDao {
	//查询管理员
	public AdminModel selectAdmin(String name) throws Exception ;
	//修改密码
	public void modifyPW(AdminModel model) throws Exception ;
	//新增管理员
	public void addAdmin(AdminModel adminModel) throws Exception ;
	//列出管理员
	public List<AdminModel> listAllAdmin() throws Exception ;
	//删除管理员
	public void delAdmin(Integer id) throws Exception ;
}
