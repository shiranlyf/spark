package com.ishiran.sparkproject.spark.session;

import org.apache.spark.AccumulatorParam;

import com.ishiran.sparkproject.constant.Constants;
import com.ishiran.sparkproject.util.StringUtils;

/**
 * session聚合统计Accumulator
 * @author lyf
 * AccumulatorParam类的泛型可以是类（序列化的）  进行复杂的操作
 */
public class SessionAggrStatAccumulator implements AccumulatorParam<String>{

	private static final long serialVersionUID = -8306790232695054403L;


	/**
	 * zero方法，主要用于初始化
	 * 我们这里返回初始化的值0
	 * 各个统计范围区间统计数量的拼接是  采用的是key=value|key=value连接串的格式
	 */
	@Override
	public String zero(String v1) {
		String initValue = "=0|";
		return Constants.SESSION_COUNT + initValue
				+ Constants.TIME_PERIOD_1s_3s + initValue
				+ Constants.TIME_PERIOD_4s_6s + initValue
				+ Constants.TIME_PERIOD_7s_9s + initValue
				+ Constants.TIME_PERIOD_10s_30s + initValue
				+ Constants.TIME_PERIOD_30s_60s + initValue
				+ Constants.TIME_PERIOD_1m_3m + initValue
				+ Constants.TIME_PERIOD_3m_10m + initValue
				+ Constants.TIME_PERIOD_10m_30m + initValue
				+ Constants.TIME_PERIOD_30m + initValue
				+ Constants.STEP_PEPIOD_1_3 + initValue
				+ Constants.STEP_PEPIOD_4_6 + initValue
				+ Constants.STEP_PERIOD_7_9 + initValue
				+ Constants.STEP_PERIOD_10_30 + initValue
				+ Constants.STEP_PERIOD_30_60 + initValue
				+ Constants.STEP_PERIOD_60 + initValue;
				
	}

	
	
	/**
	 * addInPlace和addAccumulator
	 * 可以理解是一样
	 * v1 其实就是我们初始的字符串
	 * v2遍历session的时候  判断某个session对应的区间
	 * 在v1中  找到v2对应的value值 然后更新到连接串中去
	 */
	@Override
	public String addInPlace(String v1, String v2) {
		return add(v1, v2);
	}
	
	@Override
	public String addAccumulator(String v1, String v2) {
		return add(v1, v2);
	}
	
	/**
	 * session统计计算逻辑
	 * @param v1 连接串
	 * @param v2 范围区间
	 * @return 更新以后的连接串
	 */
	private String add(String v1, String v2){
		//校验：v1为空的话  直接返回v2
		if(StringUtils.isEmpty(v1)){
			return v2;
		}
		
		//使用StringUtils工具类，从v1中，提取v2对应的值，并累加
		String oldValue = StringUtils.getFieldFromConcatString(v1, "\\|", v2);
		if(oldValue != null){
			//将范围区间原有的值，累加
			int newValue = Integer.valueOf(oldValue) + 1;
			
			//使用StringUtils工具类，将v1中，v2对应的值，设置成新的累加后的值
			return StringUtils.setFieldInConcatString(v1, "\\|", v2, String.valueOf(newValue));
		}
		
		return v1;
		
	}

}
