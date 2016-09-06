package com.pan.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.pan.model.AdminModel;
import com.pan.service.AdminService;

@Controller
public class CommonControl {
	@Resource
	private HttpServletRequest request;
	@Resource
	private AdminService adminService;

	// 首页
	@RequestMapping(value = "index")
	public String _index() {
		return "admin/admin_index";
	}
	//管理员登录页
	@RequestMapping(value = "loadPage")
	public String _loadPage(){
		return "admin/admin_load";
		
	}
	// 执行登陆
	@RequestMapping(value = "admin/load")
	public String _load(AdminModel model) {
		AdminModel adminModel = adminService.selectAdminPW(model);
		if (adminModel != null) {
			request.getSession().setAttribute("admin", adminModel);
			model = null;
			return "admin/admin_index";
		}
		model = null;
		request.setAttribute("error", "登入失败!");
		return "admin/admin_load";
	}
	
	//管理员管理界面
	@RequestMapping(value = "adminPage")
	public String modifyAdmin(){
		request.setAttribute("adminList", adminService.getAllAdmin());
		return "admin" ;
	}
	//管理员新增
	@RequestMapping(value = "adminAdd")
	public String addAdmin(AdminModel adminModel){
		if (adminService.adminAdd(adminModel)){
			request.setAttribute("info", "新增成功!");
			return modifyAdmin() ;
		}
		request.setAttribute("info", "新增失败!");
		return modifyAdmin() ;
	}
	//管理员信息修改
	@RequestMapping(value = "modifyAdmin")
	public String doModify(AdminModel adminModel){
		if (adminService.modifyPW(adminModel)){
			request.setAttribute("info", "修改成功!");
			return modifyAdmin() ;
		}
		request.setAttribute("info", "修改失败!");
		return modifyAdmin() ;
	}
	//管理员删除
	@RequestMapping(value = "delAdmin")
	public String delAdmin(Integer adminId){
		if (adminService.delAdmin(adminId)){
			request.setAttribute("info", "删除成功");
		}else{
			request.setAttribute("info", "删除失败");
		}
		return modifyAdmin() ;
	}
	//退出系统
	@RequestMapping(value = "exitSys")
	public String exitSys(){
		request.getSession().removeAttribute("admin");
		return "admin/admin_load";
	}
	
}
