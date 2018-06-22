package com.ishiran.sparkproject.spark.product;

import org.apache.spark.sql.api.java.UDF3;

/**
 * 将两个字段拼接起来(使用指定的分隔符)
 * @author lyf
 * UDF3<T1, T2, T3, R>  
 *   T1:拼接的第一个字段的类型
 *   T2:拼接的第二个字段的类型
 *   T3:拼接符的类型
 *   R:返回值的类型
 *   
 */
public class ConcatLongStringUDF implements UDF3<Long, String, String, String>{

	private static final long serialVersionUID = 1L;

	@Override
	public String call(Long v1, String v2, String split) throws Exception {
		return String.valueOf(v1) + split + v2;
	}

}
