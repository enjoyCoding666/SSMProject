package com.controller;

import com.dao.BookDao;
import com.model.Book;
import com.model.User;
import com.util.PageUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
       private final int SIZE=3;

    /**
     * 返回分页查询的结果
     * @param request
     * @param name
     * @param author
     * @param publishers
     * @return
     */
    @RequestMapping(value = "/listBook",method  =RequestMethod.GET )
    @ResponseBody
    public List listBooks(HttpServletRequest request , @RequestParam(value="name",required = false)String name ,
                             @RequestParam(value="author",required = false)String author ,
                             @RequestParam(value="publishers",required = false)String publishers ) {
        //这里有错。记得改
        int nowPage=Integer.parseInt(request.getParameter("nowPage"));
        List bookList=this.bookDao.selectPageBooks( (nowPage-1)*SIZE,SIZE ,name,author,publishers  );
        int amount=this.bookDao.selectAllBooks().size();
        PageUtil page=new PageUtil(SIZE,amount,nowPage);
        request.setAttribute("bookList",bookList);
        request.setAttribute("page",page);

         return  bookList;
    }



    /**
     * 通过 http://localhost:8080/book/searchBook?nowPage=页数  访问
     *  将分页页面和查询页面放在一起。。
     * @param request
     * @return
     */
       @RequestMapping(value = "/searchBook",method  =RequestMethod.GET )
       public String searchBook(HttpServletRequest request , @RequestParam(value="name",required = false)String name ,
                 @RequestParam(value="author",required = false)String author ,
                 @RequestParam(value="publishers",required = false)String publishers
                   ) {
        int nowPage=Integer.parseInt(request.getParameter("nowPage"));
        List bookList=this.bookDao.selectPageBooks( (nowPage-1)*SIZE,SIZE ,name,author,publishers  );
        int amount=this.bookDao.selectAllBooks().size();
        PageUtil page=new PageUtil(SIZE,amount,nowPage);
        request.setAttribute("bookList",bookList);
        request.setAttribute("page",page);

        return "searchBook";
    }


}

