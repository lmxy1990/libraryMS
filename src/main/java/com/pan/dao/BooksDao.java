package com.pan.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import com.pan.model.BookClassModel;
import com.pan.model.BooksModel;

@Repository
public interface BooksDao {
	//新增分类
	public void addClass(String className) throws Exception ;
	//删除分类
	public void delClass(String className) throws Exception ;
	//查询分类信息
	public List<BookClassModel>  scanClass() throws Exception ;
	//新增图书信息
	public void addBook(BooksModel model) throws Exception ;
	//删除图书信息
	public void delBook(long ISBN) throws Exception ;
	//修改图书信息
	public void modifyBook(BooksModel model) throws Exception ;
	//根据类查询图书
	public List<BooksModel> findBook(int typeId) throws Exception ;
	//根据ISBN查询图书
	public BooksModel findBookByISBN(long ISBN) throws Exception ;
}
