package com.pspm.utils;

import org.springframework.util.StringUtils;

public class Pagination {
	
	public static final Integer DEFAULT_PAGE_SIZE = 3;
	private Integer totalCnt;
	private Boolean hasPreviouse;
	private Boolean hasNext;
	private Boolean hasMorePage;
	private Integer pageNum;
	private Integer startIndex;
	private Integer totalPage = 0;
	
	public Pagination (Integer totalCnt, Integer curPage){
		this.totalCnt = totalCnt;
		if(totalCnt>DEFAULT_PAGE_SIZE){
			hasMorePage = true;
		}else{
			hasMorePage = false;
		}
		if(curPage==null || curPage<1){
			pageNum = 1;
			hasPreviouse = false;
		}else{
			pageNum = curPage;
			hasPreviouse = true;
		}
		if(totalCnt>0){
			totalPage = totalCnt / DEFAULT_PAGE_SIZE;
			if((totalCnt % DEFAULT_PAGE_SIZE)!=0){
				totalPage = totalPage + 1;
			}
		}
	}
	
	public Pagination(String pageNumStr) {
		if(StringUtils.isEmpty(pageNumStr)){
			pageNum =  1;
		}else{
			try{
				pageNum = Integer.valueOf(pageNumStr);
			}catch(Exception e){
				pageNum = 1; 
			}
			if(pageNum<1){
				pageNum = 1;
			}
		}
		startIndex = (pageNum - 1) * DEFAULT_PAGE_SIZE;
	}

	public Integer getTotalCnt() {
		return totalCnt;
	}
	public void setTotalCnt(Integer totalCnt) {
		this.totalCnt = totalCnt;
	}
	public Boolean getHasPreviouse() {
		return hasPreviouse;
	}
	public void setHasPreviouse(Boolean hasPreviouse) {
		this.hasPreviouse = hasPreviouse;
	}
	public Boolean getHasNext() {
		return hasNext;
	}
	public void setHasNext(Boolean hasNext) {
		this.hasNext = hasNext;
	}
	public Boolean getHasMorePage() {
		return hasMorePage;
	}
	public void setHasMorePage(Boolean hasMorePage) {
		this.hasMorePage = hasMorePage;
	}
	public Integer getStartIndex() {
		return startIndex;
	}

	public Integer getPageNum() {
		return pageNum;
	}

	public void setPageNum(Integer pageNum) {
		this.pageNum = pageNum;
	}

	public void setStartIndex(Integer startIndex) {
		this.startIndex = startIndex;
	}

	public Integer getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}
	
	
}
