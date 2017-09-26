package com.pojo;

/**
 * Created by lenovo on 2017/9/26.
 */
public class Book {
    private int id;
    private String name;
    private String type;
    private String author;
    private String publishers;
    private String brrowDate;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPublishers() {
        return publishers;
    }

    public void setPublishers(String publishers) {
        this.publishers = publishers;
    }

    public String getBrrowDate() {
        return brrowDate;
    }

    public void setBrrowDate(String brrowDate) {
        this.brrowDate = brrowDate;
    }
}
