package com.ishiran.sparkproject.domain;

/**
 * 随机抽取session
 * @author lyf
 *
 */
public class SessionRandomExtract {
	
	private long taskid;
	private String sesssionid;
	private String startTime;
	private String searchKeywords;
	private String clickCategoryIds;
	
	public long getTaskid() {
		return taskid;
	}
	public void setTaskid(long taskid) {
		this.taskid = taskid;
	}
	public String getSesssionid() {
		return sesssionid;
	}
	public void setSesssionid(String sesssionid) {
		this.sesssionid = sesssionid;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getSearchKeywords() {
		return searchKeywords;
	}
	public void setSearchKeywords(String searchKeywords) {
		this.searchKeywords = searchKeywords;
	}
	public String getClickCategoryIds() {
		return clickCategoryIds;
	}
	public void setClickCategoryIds(String clickCategoryIds) {
		this.clickCategoryIds = clickCategoryIds;
	}
	
	

}
