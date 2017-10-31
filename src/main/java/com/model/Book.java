package com.model;

import java.util.Date;

public class Book {
    private Integer bookId;

    private String name;

    private String type;

    private String author;

    private String publishers;

    private String borrowdate;

    public Book(Integer bookId, String name, String type, String author, String publishers, String borrowdate) {
        this.bookId = bookId;
        this.name = name;
        this.type = type;
        this.author = author;
        this.publishers = publishers;
        this.borrowdate = borrowdate;
    }

    public Book() {
        super();
    }

    public Integer getBookId() {
        return bookId;
    }

    public void setBookId(Integer bookId) {
        this.bookId = bookId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author == null ? null : author.trim();
    }

    public String getPublishers() {
        return publishers;
    }

    public void setPublishers(String publishers) {
        this.publishers = publishers == null ? null : publishers.trim();
    }

    public String getBorrowdate() {
        return borrowdate;
    }

    public void setBorrowdate(String borrowdate) {
        this.borrowdate = borrowdate;
    }
}