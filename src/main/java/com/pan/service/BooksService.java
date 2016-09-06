package com.pan.service;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.pan.dao.BooksDao;
import com.pan.model.BookClassModel;
import com.pan.model.BooksModel;

@Service
public class BooksService {
	@Resource
	private BooksDao booksDao ;
	
		//新增分类
		public boolean addClass(String className){
			try {
				if (className == null| className == ""){
					return false ;
				}
				booksDao.addClass(className);
				return true ;
			} catch (Exception e) {
				return false ;
			}
		}
		//删除分类
		public boolean delClass(String  className){
		try {
				booksDao.delClass(className);
				return true ;
			} catch (Exception e) {
				return false ;
			}
		}
		//查询分类信息
		public List<BookClassModel>  scanClass(){
		try {
				return booksDao.scanClass() ;
			} catch (Exception e) {
				e.printStackTrace();
				return null ;
			}
		}
		//新增图书信息
		public boolean addBook(BooksModel model){
		try {
			if (model.getISBN() == null |model.getBookName() == ""){
				return false ;
			}
				booksDao.addBook(model);
				return true ;
			} catch (Exception e) {
				return false ;
			}
		}
		//删除图书信息
		public boolean delBook(long ISBN){
		try {
				booksDao.delBook(ISBN);
				return true ;
			} catch (Exception e) {
				return false ;
			}
		}
		//修改图书信息
		public boolean modifyBook(BooksModel model){
		try {
				booksDao.modifyBook(checkDate(model));
				return true ;
			} catch (Exception e) {
				return false ;
			}
		}
		//根据类查询图书
		public List<BooksModel> findBook(int typeId){
		try {
				return booksDao.findBook(typeId) ;
			} catch (Exception e) {
				return null ;
			}
		}
		//根据ISBN查询图书
		public BooksModel findBookByISBN(long ISBN) {
			try {
				return booksDao.findBookByISBN(ISBN);
			} catch (Exception e) {
				return null ;
			}
		}
		//消除空值
	public BooksModel checkDate(BooksModel model){
		if ("".equals(model.getBookName())) {
			model.setBookName(null);
		}
		if ("".equals(model.getDate())) {
			model.setDate(null);
		}
		if ("".equals(model.getPublisher())) {
			model.setPublisher(null);
		}
		if ("".equals(model.getWriter())) {
			model.setWriter(null);
		}
		if ("".equals(model.getTranslater())) {
			model.setTranslater(null);
		}
		return model ;
	}
}
