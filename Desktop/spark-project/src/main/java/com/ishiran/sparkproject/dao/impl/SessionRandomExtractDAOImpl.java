package com.ishiran.sparkproject.dao.impl;

import com.ishiran.sparkproject.dao.ISessionRandomExtractDAO;
import com.ishiran.sparkproject.domain.SessionRandomExtract;
import com.ishiran.sparkproject.jdbc.JDBCHelper;

/**
 * 随机抽取session的DAO实现
 * @author lyf
 *
 */
public class SessionRandomExtractDAOImpl implements ISessionRandomExtractDAO{
	
	

	/**
	 * 插入session随机抽取
	 */
	public void insert(SessionRandomExtract sessionRandomExtract) {
		String sql = "insert into session_random_extract values(?,?,?,?,?)";
		
		Object[] params = new Object[]{sessionRandomExtract.getTaskid(),
				sessionRandomExtract.getSesssionid(),
				sessionRandomExtract.getStartTime(),
				sessionRandomExtract.getSearchKeywords(),
				sessionRandomExtract.getClickCategoryIds()}; 
		
		JDBCHelper  jdbcHelper = JDBCHelper.getInstance();
		jdbcHelper.executeUpdate(sql, params);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
