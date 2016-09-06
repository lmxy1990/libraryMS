package com.pan.service;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.pan.dao.UserDao;
import com.pan.model.UserModel;

@Service
public class UserService {
	@Resource
	private UserDao userDao;

	// 新增
	public boolean addUser(UserModel model) {
		try {
			if (model.getName() == null|model.getName() == ""){
				return false ;
			}
			userDao.addUser(model);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	// 修改
	public boolean modifyUser(UserModel model) {
		try {
			userDao.modifyUser(checkDate(model));
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	// 删除
	public boolean delUser(int id) {
		try {
			userDao.delUser(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	// 根据证件查询
	public UserModel findUser(long no) {
		try {
			return userDao.findUser(no);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	// 根据名字查询
	public UserModel findByName(String name) {
		try {
			return userDao.findByName(name);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	// 列出所有用户
	public List<UserModel> listAllUser() {
		try {
			return userDao.listAllUser();
		} catch (Exception e) {
			return null;
		}
	}
	public UserModel checkDate(UserModel model){
		if ("".equals(model.getDate())){
			model.setDate(null);
		}
		if ("".equals(model.getIDCardType())){
			model.setIDCardType(null);
		}
		if ("".equals(model.getName())){
			model.setName(null);
		}
		if ("".equals(model.getSex())){
			model.setSex(null);
		}
		if ("".equals(model.getZy())){
			model.setZy(null);
		}
		if ("".equals(model.getTel())){
			model.setTel(null);
		}
		if ("".equals(model.getIDCardNo())){
			model.setTel(null);
		}
		return model ;
	}
	
}
