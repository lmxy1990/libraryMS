package com.pan.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.pan.model.UserModel;
import com.pan.service.UserService;

@Controller
public class UserControl {
	@Resource
	private HttpServletRequest request;
	@Resource
	private UserService userService;

	// 用户管理界面
	@RequestMapping(value = "userManage")
	public String userManage() {
		listAllUser();
		return "user/user_manage";
	}

	// 用户新增界面
	@RequestMapping(value = "userAdd")
	public String userAdd() {
		return "user/user_add";
	}

	// 用户修改
	@RequestMapping(value = "userDoModify")
	public String userDoModify(UserModel userModel) {
		System.out.println(userModel.getId());
		if (userService.modifyUser(userModel)) {
			request.setAttribute("info", "修改成功!");
			return userManage();
		}
		request.setAttribute("info", "修改失败!");
		return userManage();
	}

	// 用户新增
	@RequestMapping(value = "user/userAdd",method = RequestMethod.POST)
	public String userDoAdd(@Valid UserModel userModel) {
		if (userService.addUser(userModel)) {
			request.setAttribute("info", "新增成功!");
			return userAdd();
		}
		request.setAttribute("info", "新增失败!");
		return userAdd();
	}

	// 用户删除
	@RequestMapping(value = "userDoDel")
	public String userDoDel(int id) {
		if (userService.delUser(id)) {
			request.setAttribute("info", "删除成功!");
			return userManage();
		}
		request.setAttribute("info", "删除失败!");
		return userManage();
	}

	// 执行查询
	@RequestMapping(value = "userDoSelect")
	public String userDoSelect(String name) {
		UserModel userModel = userService.findByName(name);
		if (userModel != null) {
			request.removeAttribute("userList");
			request.setAttribute("user", userModel);
			request.setAttribute("info", "修改成功!");
			return "user/user_manage";
		}
		request.setAttribute("info", "修改失败!");
		return "user/user_manage";
	}

	// 列出所有用户
	public void listAllUser() {
		request.removeAttribute("user");
		request.setAttribute("userList", userService.listAllUser());
	}

}
