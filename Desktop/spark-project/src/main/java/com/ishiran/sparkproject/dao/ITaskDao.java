package com.ishiran.sparkproject.dao;

import com.ishiran.sparkproject.domain.Task;

/**
 * 任务管理Dao接口
 * @author lyf
 *
 */
public interface ITaskDao {
	
	/**
	 * 根据主键查询任务
	 * @param taskid  主键
	 * @return  任务
	 */
	Task  findById(long taskid);
	

}
