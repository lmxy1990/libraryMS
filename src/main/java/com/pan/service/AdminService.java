package com.pan.service;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.pan.dao.AdminDao;
import com.pan.model.AdminModel;

@Service
public class AdminService {
	@Resource
	private AdminDao adminDao;

	// 判断登录是否成功
	public AdminModel selectAdminPW(AdminModel model) {
		try {
			AdminModel adminModel = adminDao.selectAdmin(model.getUserName());
			if (adminModel == null) {
				return null;
			}
			if (adminModel.getPassword().equals(model.getPassword())) {
				return adminModel;
			}
			return null;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	// 修改管理员信息
	public boolean modifyPW(AdminModel adminModel) {
		try {
			adminDao.modifyPW(checkAdmin(adminModel));
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	/**
	 * @param adminModel 传入的管理员模型
	 * @return 新增数据是否成功
	 */
	public boolean adminAdd(AdminModel adminModel){
		if (adminModel.getUserName() == null|adminModel.getUserName() == ""){
			return false ;
		}
		try {
			adminDao.addAdmin(adminModel);
			return true ;
		} catch (Exception e) {
			return false ;
		}
	}
	//列出所有管理员
	public List<AdminModel> getAllAdmin(){
		try {
			return adminDao.listAllAdmin() ;
		} catch (Exception e) {
			return null ;
		}
	}
	//删除管理员
	public boolean delAdmin(Integer id){
		try {
			adminDao.delAdmin(id);
			return true ;
		} catch (Exception e) {
			return false ;
		}
	}
	//空值提取
	public AdminModel checkAdmin(AdminModel adminModel){
		if (adminModel.getUserName() == ""){
			adminModel.setUserName(null);
		}
		if (adminModel.getPassword() == ""){
			adminModel.setPassword(null);
		}
		if (adminModel.getMail()== ""){
			adminModel.setMail(null);
		}
		return adminModel ;
	}
}
