package com.ishiran.sparkproject.test;

import com.ishiran.sparkproject.conf.ConfigurationManager;

public class ConfigurationManagerTest {

	public static void main(String[] args) {
		String testkey1 = ConfigurationManager.getProperty("testkey1");
		System.out.println(testkey1);
	}
}
