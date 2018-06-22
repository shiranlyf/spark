package com.ishiran.sparkproject.dao.impl;

import com.ishiran.sparkproject.dao.ITop10CategoryDAO;
import com.ishiran.sparkproject.domain.Top10Category;
import com.ishiran.sparkproject.jdbc.JDBCHelper;

/**
 * top10品类Dao实现
 * @author lyf
 *
 */
public class Top10CategoryDAOImpl implements ITop10CategoryDAO{

	@Override
	public void insert(Top10Category category) {
		String sql = "insert into top10_category values(?,?,?,?,?)";
		
		Object[] params = new Object[]{category.getTaskid(),
				category.getCategoryid(),
				category.getClickCount(),
				category.getOrderCount(),
				category.getPayCount()};
         
		JDBCHelper jdbcHelper = JDBCHelper.getInstance();
		jdbcHelper.executeUpdate(sql, params);
	}

}
