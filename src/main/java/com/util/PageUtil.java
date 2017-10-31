package com.util;

/**
 * Created by lenovo on  十月
 * @author lin
 */
public class PageUtil {
    private int page;
    private int size;
    private int amount;
    private  int nowPage;
    private int previous;
    private  int next;
    /**
     * 此处缺少异常情况处理
     * @param size
     * @param amount
     * @param nowPage
     */

    public PageUtil(int size, int amount, int nowPage) {
        this.size = size;
        this.amount = amount;
        this.nowPage = nowPage;
        this.page=(amount%size ==0)? amount/size :amount/size+1 ;
    }

    public int getPreviousPage() {
        return this.getNowPage()==1? 1: this.getNowPage()-1 ;
    }

    public int getNextPage() {
        return this.getNowPage()+1;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getNowPage() {
        return nowPage;
    }

    public void setNowPage(int nowPage) {
        this.nowPage = nowPage;
    }


    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
}
