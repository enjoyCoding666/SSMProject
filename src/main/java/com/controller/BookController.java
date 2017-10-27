package com.controller;

import com.dao.BookDao;
import com.model.Book;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by lenovo on 2017/9/27.
 * @author  lin
 */

@Controller
@RequestMapping(value = "/book")
public class BookController {
       @Resource
       private BookDao bookDao;

       @RequestMapping(value = "/listBook",method = RequestMethod.GET)
       public String listBook(HttpServletRequest request){
           List<Book> bookList=this.bookDao.selectAllBooks();
           request.setAttribute("bookList",bookList);
           return  "listbooks";
       }

}
