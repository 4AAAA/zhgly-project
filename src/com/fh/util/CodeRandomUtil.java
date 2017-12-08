package com.fh.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

public class CodeRandomUtil {
	/**
	 * 订单编号
	 * @return
	 */
	public static String getCode() {

		SimpleDateFormat simpleDateFormat;

		simpleDateFormat = new SimpleDateFormat("yyyyMMdd");

		Date date = new Date();

		String str = simpleDateFormat.format(date);

		int rancode = (int)(Math.random()*(9999-1000+1))+1000;

		return "DCDD-" + str + "-" + rancode;

	}
	/**
	 * 维修设备编号
	 * @return
	 */
	public static String getDeviceCode() {

		SimpleDateFormat simpleDateFormat;

		simpleDateFormat = new SimpleDateFormat("yyyyMMdd");

		Date date = new Date();

		String str = simpleDateFormat.format(date);

		int rancode = (int)(Math.random()*(9999-1000+1))+1000;

		return "DCJQ-" + str + "-" + rancode;

	}
	/**
	 * 客户编号
	 * @return
	 */
	public static String getCompanyCode() {

		SimpleDateFormat simpleDateFormat;

		simpleDateFormat = new SimpleDateFormat("yyyyMMdd");

		Date date = new Date();

		String str = simpleDateFormat.format(date);

		int rancode = (int)(Math.random()*(9999-1000+1))+1000;

		return "DCKH-" + str + "-" + rancode;

	}

}
