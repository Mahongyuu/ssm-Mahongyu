package com.hxci.zhangfugang.controller;

import com.hxci.zhangfugang.dao.BookDao;
import com.hxci.zhangfugang.pojo.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("stu")
public class BookController {
    @Autowired
    BookDao bookDao;

    @RequestMapping("query")
    public String query(Model model){
        List<Book> list = bookDao.query();
        model.addAttribute("list",list);
        return "query";
    }

    @RequestMapping("add")
    public String add(){
        return "add";
    }

    @RequestMapping("save")
    public String save(Book book){
        int a =bookDao.save(book);
        return "redirect: query";
    }
    @RequestMapping("del")
    public String del(int id){
        int a =bookDao.del(id);
        return "redirect: query";
    }
}
