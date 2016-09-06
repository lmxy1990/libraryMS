package com.pan.controller;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.pan.model.BooksModel;
import com.pan.service.BooksService;

@Controller
public class BooksControl {
	@Resource
	private BooksService booksService;
	@Resource
	private HttpServletRequest request;

	// 图书管理界面
	@RequestMapping(value = "booksManage")
	public String booksManage() {
		lisAllClass();
		return "books/book_manage";
	}

	// 图书新增界面
	@RequestMapping(value = "booksAdd")
	public String booksAdd() {
		lisAllClass();
		return "books/book_add";
	}

	// 图书修改
	@RequestMapping(value = "booksDoModify")
	public String booksDoModify(BooksModel booksModel) {
		if (booksService.modifyBook(booksModel)) {
			request.setAttribute("info", "修改成功!");
			return booksManage() ;
		}
		request.setAttribute("info", "修改失败!");
		return booksManage() ;
	}

	// 图书新增
	@RequestMapping(value = "booksDoAdd")
	public String booksDoAdd(BooksModel model) {
		if (booksService.addBook(model)) {
			request.setAttribute("info", "新增成功!");
			return booksAdd();
		}
		request.setAttribute("info", "新增失败!");
		return booksAdd();
	}

	// 图书删除
	@RequestMapping(value = "booksDoDel")
	public String booksDoDel(String bookId) {
		Long ISBN = new Long(bookId) ;
		if (booksService.delBook(ISBN)) {
			request.setAttribute("info", "修改成功!");
			return booksManage();
		}
		request.setAttribute("info", "修改失败!");
		return booksManage();
	}

	// 执行查询
	@RequestMapping(value = "booksDoSelect")
	public String booksDoSelect(long ISBN) {
		BooksModel model = booksService.findBookByISBN(ISBN);
		if (model != null) {
			request.removeAttribute("booksList");
			request.setAttribute("book", model);
			request.setAttribute("info", "执行成功!");
			return "books/book_modify";
		}
		request.setAttribute("info", "执行失败!");
		return "books/book_modify";
	}

	// 新增分类
	@RequestMapping(value = "addBooksClass")
	public String addBooksClass(String className) {
		if (booksService.addClass(className)) {
			request.setAttribute("info", "新增成功!");
			return booksAdd();
		}
		request.setAttribute("info", "新增失败!");
		return booksAdd() ;
	}

	// 删除分类
	@RequestMapping(value = "books/delBooksClass")
	public String delBooksClass(String name) {
		if (booksService.delClass(name)) {
			request.setAttribute("info", "删除成功!");
			return booksManage();
		}
		request.setAttribute("info", "删除失败!");
		return booksManage();
	}
	//根据分类查询类下的图书信息
	@RequestMapping(value = "listBooks")
	public String listBooks(Integer classId){
		request.setAttribute("selectFlag", classId);
		request.setAttribute("booksList", booksService.findBook(classId));
		return booksManage() ;
	}

	// 列出所有分类
	public void lisAllClass() {
		request.setAttribute("classList", booksService.scanClass());
	}
	
}
