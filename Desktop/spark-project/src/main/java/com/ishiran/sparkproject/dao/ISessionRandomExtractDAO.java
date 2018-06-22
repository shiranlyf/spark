package com.ishiran.sparkproject.dao;

import com.ishiran.sparkproject.domain.SessionAggrStat;
import com.ishiran.sparkproject.domain.SessionRandomExtract;

/**
 * session随机抽取莫夸Dao接口
 * @author lyf
 *
 */
public interface ISessionRandomExtractDAO {

	/**
	 * 插入session随机抽取
	 * @param sessionAggrStat
	 */
	void insert(SessionRandomExtract sessionRandomExtract);
}
