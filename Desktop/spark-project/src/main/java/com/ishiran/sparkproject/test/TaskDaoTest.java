package com.ishiran.sparkproject.test;

import com.ishiran.sparkproject.dao.ITaskDao;
import com.ishiran.sparkproject.dao.factory.DaoFactory;
import com.ishiran.sparkproject.domain.Task;

public class TaskDaoTest {

	public static void main(String[] args) {
		ITaskDao taskDao = DaoFactory.getTaskDao();
		Task task = taskDao.findById(1);
		System.out.println(task.getTaskName());
	}
}
