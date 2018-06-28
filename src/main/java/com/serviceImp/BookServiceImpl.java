package com.serviceImp;

import com.dao.BookDao;
import com.model.Book;
import com.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by lenovo on  六月
 */
public class BookServiceImpl implements BookService {
    @Autowired
    private BookDao bookDao;

}
