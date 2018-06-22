package com.ishiran.sparkproject.dao.factory;

import com.ishiran.sparkproject.dao.IAdBlacklistDAO;
import com.ishiran.sparkproject.dao.IAdClickTrendDAO;
import com.ishiran.sparkproject.dao.IAdProvinceTop3DAO;
import com.ishiran.sparkproject.dao.IAdStatDAO;
import com.ishiran.sparkproject.dao.IAdUserClickCountDAO;
import com.ishiran.sparkproject.dao.IAreaTop3ProductDAO;
import com.ishiran.sparkproject.dao.IPageSplitConvertRateDAO;
import com.ishiran.sparkproject.dao.ISessionAggrStatDAO;
import com.ishiran.sparkproject.dao.ISessionDetailDao;
import com.ishiran.sparkproject.dao.ISessionRandomExtractDAO;
import com.ishiran.sparkproject.dao.ITaskDao;
import com.ishiran.sparkproject.dao.ITop10CategoryDAO;
import com.ishiran.sparkproject.dao.ITop10SessionDAO;
import com.ishiran.sparkproject.dao.impl.AdBlacklistDAOImpl;
import com.ishiran.sparkproject.dao.impl.AdClickTrendDAOImpl;
import com.ishiran.sparkproject.dao.impl.AdProvinceTop3DAOImpl;
import com.ishiran.sparkproject.dao.impl.AdStatDAOImpl;
import com.ishiran.sparkproject.dao.impl.AdUserClickCountDAOImpl;
import com.ishiran.sparkproject.dao.impl.AreaTop3ProductDAOImpl;
import com.ishiran.sparkproject.dao.impl.PageSplitConvertRateDAOImpl;
import com.ishiran.sparkproject.dao.impl.SessionAggrStatDAOImpl;
import com.ishiran.sparkproject.dao.impl.SessionDetailDaoImpl;
import com.ishiran.sparkproject.dao.impl.SessionRandomExtractDAOImpl;
import com.ishiran.sparkproject.dao.impl.TaskDaoImpl;
import com.ishiran.sparkproject.dao.impl.Top10CategoryDAOImpl;
import com.ishiran.sparkproject.dao.impl.Top10SessionDAOImpl;

/**
 * Dao工厂类
 * @author lyf
 *
 */
public class DaoFactory {
	
	
	public static ITaskDao getTaskDao(){
		return new TaskDaoImpl();
	}
	
	public static ISessionAggrStatDAO getSessionAggrStarStatDAO(){
		return new SessionAggrStatDAOImpl();
	}
	
	public static ISessionRandomExtractDAO getSessionRandomExtractDAO(){
		return new SessionRandomExtractDAOImpl();
	}
	
	public static ISessionDetailDao getSessionDetailDAO(){
		return new SessionDetailDaoImpl();
	}
	
	public static ITop10CategoryDAO getTop10CategoryDAO(){
		return new Top10CategoryDAOImpl();
	}
	
	
	public static ITop10SessionDAO  getTop10SessionDAO(){
		return new Top10SessionDAOImpl();
	}
	
	public static IPageSplitConvertRateDAO getPageSplitConvertRateDAO() {
		return new PageSplitConvertRateDAOImpl();
	}
	
	public static IAreaTop3ProductDAO getAreaTop3ProductDAO() {
		return new AreaTop3ProductDAOImpl();
	}
	
	public static IAdUserClickCountDAO getAdUserClickCountDAO() {
		return new AdUserClickCountDAOImpl();
	}
	
	public static IAdBlacklistDAO getAdBlacklistDAO() {
		return new AdBlacklistDAOImpl();
	}
	
	public static IAdStatDAO getAdStatDAO() {
		return new AdStatDAOImpl();
	}
	
	public static IAdProvinceTop3DAO getAdProvinceTop3DAO() {
		return new AdProvinceTop3DAOImpl();
	}
	
	public static IAdClickTrendDAO getAdClickTrendDAO() {
		return new AdClickTrendDAOImpl();
	}
}
