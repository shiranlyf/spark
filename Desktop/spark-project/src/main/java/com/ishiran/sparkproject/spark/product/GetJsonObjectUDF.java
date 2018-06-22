package com.ishiran.sparkproject.spark.product;

import org.apache.spark.sql.api.java.UDF2;

import com.alibaba.fastjson.JSONObject;

/**
 * 
 * 技术点5：自定义UDF函数
 * 
 * get_json_object()
 * @author Administrator
 *
 * UDF2<T1, T2, R>
 *  T1:json 字符串
 *  T2:json 某一个字段的名称
 *  R:某一字段的返回值
 */
public class GetJsonObjectUDF implements UDF2<String, String, String>{

	private static final long serialVersionUID = 1L;

	@Override
	public String call(String json, String field) throws Exception {
		try {
			JSONObject jsonObject = JSONObject.parseObject(json);
			return jsonObject.getString(field);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
