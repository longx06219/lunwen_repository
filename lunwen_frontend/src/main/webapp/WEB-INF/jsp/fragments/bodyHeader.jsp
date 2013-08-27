<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="header">
	<div class="top_header">
		<c:choose>
			<c:when test="${user.userName != null && !user['new']}">
				<spring:url value="/user_{user_name}" var="userUrl">
                   	<spring:param name="user_name" value="${user.userName}"/>
               	</spring:url>
				<a href="${fn:escapeXml(userUrl)}">${user.userName}</a>&nbsp;&nbsp;&nbsp;
				<spring:url value="/logout" var="logoutUrl">
               	</spring:url>
				<a href="${fn:escapeXml(logoutUrl)}">注销</a>
			</c:when>
			<c:otherwise>
				<spring:url value="/register" var="registerUrl">
               	</spring:url>
               	<spring:url value="/login" var="loginUrl">
               	</spring:url>
				<a href="${fn:escapeXml(registerUrl)}">注册</a>&nbsp;&nbsp;&nbsp;<a href="${fn:escapeXml(loginUrl)}">登录</a>
			</c:otherwise>
		</c:choose>
	</div>
	<spring:url value="/home" var="homeUrl">
   	</spring:url>
	<a class="top_logo" href="${fn:escapeXml(homeUrl)}"><span>安全可控操作系统</span>内核参考版本构建平台</a>
	<ul class="top_nav">
       	<spring:url value="/repositories" var="repositoriesUrl">
       	</spring:url>
       	<spring:url value="/build" var="buildUrl">
       	</spring:url>
       	<spring:url value="/help_1" var="helpUrl">
       	</spring:url>
		<li class="current"><a href="${fn:escapeXml(homeUrl)}">首页</a></li>
		<li><a href="${fn:escapeXml(repositoriesUrl)}">版本库</a></li>
		<li><a href="${fn:escapeXml(buildUrl)}">编译与测试</a></li>
		<li><a href="${fn:escapeXml(helpUrl)}">帮助</a></li>
	</ul>
</div>