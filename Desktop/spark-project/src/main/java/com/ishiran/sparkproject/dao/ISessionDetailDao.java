package com.ishiran.sparkproject.dao;

import java.util.List;

import com.ishiran.sparkproject.domain.SessionDetail;

/**
 * session明细Dao
 * @author lyf
 *
 */
public interface ISessionDetailDao {
	
	/**
	 * 插入一条session数据
	 * @param sessionDetail
	 */
	void insert(SessionDetail sessionDetail);
	
	/**
	 * 批量插入session明细数据
	 * @param sessionDetails
	 */
	void insertBatch(List<SessionDetail> sessionDetails);

}
