package com.xtf.utils;

import java.io.Serializable;

/**
 * 分页显示
 * @author Xu
 */

public class Page implements Serializable {
    private static final long serialVersionUID = -3198048449643774660L;

    private int pageNow = 1; //当前页数

    private int pageSize = 8; //每页显示记录的条数

    private int totalCount; //总的记录条数

    @SuppressWarnings("unused")
    private int totalPageCount; //总的页数

    @SuppressWarnings("unused")
    private  int startPos; //开始位置，从0开始

    @SuppressWarnings("unused")
    private boolean hasFirst; //是否有首页

    @SuppressWarnings("unused")
    private boolean hasPre; //是否有钱一页

    @SuppressWarnings("unused")
    private boolean hasNext; //是否有下一页

    @SuppressWarnings("unused")
    private boolean hasLast; //是否有最后一页

    //通过构造函数传入 总记录数和当前页码
    public Page(int totalCount, int pageNow) {
        this.pageNow = pageNow;
        this.totalCount = totalCount;
    }

    public int getPageNow() {
        return pageNow;
    }

    public void setPageNow(int pageNow) {
        this.pageNow = pageNow;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    /**
     * 取得一共分得多少页
     * 总页数=总记录数/每页显示
     */
    public int getTotalPageCount() {

        totalPageCount = getTotalCount() / getPageSize();

        return (totalCount % pageSize == 0) ? totalPageCount : totalPageCount + 1;
    }

    public void setStartPos(int startPos) {
        this.startPos = startPos;
    }

    //取得选择记录的初始位置

    public int getStartPos() {
        return (pageNow - 1) * pageSize;
    }

    //是否是第一页
    public  boolean isHasFirst() {
        return (pageNow == 1) ? false : true;
    }

    public void setHasFirst(boolean hasFirst) {
        this.hasFirst = hasFirst;
    }

    //是否有首页
    public boolean isHasPre() {
        //有首页就不是第一页
        return isHasFirst() ? true : false;
    }

    public void setHasPre(boolean hasPre) {
        this.hasPre = hasPre;
    }

    //是否有尾页
     public boolean isHasLast() {
        return (pageNow == getTotalCount()) ? false : true;
     }

     public void setHasLast(boolean hasLast) {
        this.hasLast = hasLast;
     }

    //是否有下一页
    public boolean isHasNext() {
        //如果有尾页就有下一页，因为有尾页表明不是最后一页
        return isHasLast() ? true : false;
    }

}
