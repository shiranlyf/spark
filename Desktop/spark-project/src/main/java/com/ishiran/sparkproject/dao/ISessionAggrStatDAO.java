package com.ishiran.sparkproject.dao;

import com.ishiran.sparkproject.domain.SessionAggrStat;

/**
 * Session聚合统计Dao
 * @author lyf
 *
 */
public interface ISessionAggrStatDAO {

	/**
	 * 插入session聚合统计结果
	 * @param sessionAggrStat
	 */
	void insert(SessionAggrStat sessionAggrStat);
}
