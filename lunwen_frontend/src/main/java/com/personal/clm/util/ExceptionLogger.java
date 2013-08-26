package com.personal.clm.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ExceptionLogger {
	
	private static Logger logger = LoggerFactory.getLogger("xmlInfo");
	
	/**
	 * 记录详细错误日志
	 * @param exception
	 */
	public static void error(Exception exception) {
		if (exception != null) {
			StackTraceElement[] stackTrace = exception.getStackTrace();
			StringBuilder sb = new StringBuilder(exception.toString());
			sb.append("\n");
			for (StackTraceElement stackTraceElement : stackTrace) {
				sb.append("\tat " + stackTraceElement);
				sb.append("\n");
			}
			logger.error(sb.toString());
		}
	}
	
	/**
	 * 记录消息
	 * @param exception
	 */
	public static void info(String message) {
		logger.info(message);
	}

}
