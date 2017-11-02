package com.controller;

import com.dao.BookDao;
import com.model.Book;
import com.util.PageUtil;
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
       private final int SIZE=2;

    /**
     * 通过 http://localhost:8080/book/listBook?nowPage=页数  访问
     * @param request
     * @return
     */
       @RequestMapping(value = "/listBook",method = RequestMethod.GET)
       public String listBook(HttpServletRequest request){
           int nowPage=Integer.parseInt(request.getParameter("nowPage"));
           List bookList=this.bookDao.selectPageBooks(nowPage,5);
           int amount=bookList.size();
           PageUtil page=new PageUtil(SIZE,amount,nowPage);
           request.setAttribute("bookList",bookList);
           request.setAttribute("page",page);
           return  "listbooks";
       }

}
