<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath}/static/css/style.css" rel="stylesheet" type="text/css"/>
<title>Insert title here</title>
</head>
<body>
	<table border="1px;" width="90%" align="center">
		<tr>
			<th>序号</th>
			<th>用户名</th>
			<th>真实姓名</th>
			<th>密码</th>
			<th>身份证</th>
			<th>年龄</th>
			<th>性别</th>
			<th>手机号码</th>
			<th>邮箱</th>
			<th>登录IP</th>
			<th>登录时间</th>
			<th>是否锁定</th>
			<td>操作</td>
		</tr>
		<c:forEach items="${managerPage}" var="manager">
		<tr>
			<td>${manager.id}</td>
			<td>${manager.name}</td>
			<td>${manager.realityName}</td>
			<td>${manager.password}</td>
			<td>${manager.idCard}</td>
			<td>${manager.age}</td>
			<td>${manager.sex}</td>
			<td>${manager.mobile}</td>
			<td>${manager.email}</td>
			<td>${manager.loginIP}</td>
			<td>${manager.loginTime}</td>
			<td>${manager.isLocked}</td>
			<td>
			<a href="/play/sys/manager/deleteManager?id=${manager.id}">删除</a>
			<a href="/play/sys/manager/editManagerInit?id=${manager.id}">修改</a>
			</td>
		</tr>
		</c:forEach>
		<tr>
			<td><a href="/play/sys/manager/editManagerInit">添加</a></td>
			<td><a href="/play/sys/manager/managerList?pageNum=${managerPage.getPageNum()-1}">上一页</a></td>
			<td><a href="/play/sys/manager/managerList?pageNum=${managerPage.getPageNum()+1}">下一页</a></td>
		</tr>
	</table>
</body>
</html>