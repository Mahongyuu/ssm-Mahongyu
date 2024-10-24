package com.hxci.zhangfugang.dao;

import com.hxci.zhangfugang.pojo.Book;

import java.util.List;

public interface BookDao {
    public List<Book> query();
    int save(Book book);
    int del(Integer id);
    Book edit(Integer id);
    int update(Book book);
}

