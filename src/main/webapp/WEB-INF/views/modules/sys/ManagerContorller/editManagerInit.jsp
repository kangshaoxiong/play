<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>	
		<c:when test="${manager!=null}">
			<form action="/play/sys/manager/updateManager" method="post">
		</c:when>
		<c:otherwise>
			<form action="/play/sys/manager/addManager" method="post">
		</c:otherwise>
	</c:choose>
	<table border="1px;" align="center">
		<tr>
			<td>序号</td>
			<td><input type="text" name="id" value="${manager.id}"/></td>
		</tr>
		<tr>
			<td>用户名</td>
			<td><input type="text" name="name" value="${manager.name}"/></td>
		</tr>
		<tr>
			<td>真实姓名</td>
			<td><input type="text" name="realityName" value="${manager.realityName}"/></td>
		</tr>
		<tr>
			<td>密码</td>
			<td><input type="text" name="password" value="${manager.password}"/></td>
		</tr>
		<tr>
			<td>身份证</td>
			<td><input type="text" name="idCard" value="${manager.idCard}"/></td>
		</tr>
		<tr>
			<td>年龄</td>
			<td><input type="text" name="age" value="${manager.age}"/><form:errors path="manager.age"/>  </td>
		</tr>
		<tr>
			<td>性别</td>
			<td><input type="text" name="sex" value="${manager.sex}"/></td>
		</tr>
		<tr>
			<td>手机号码</td>
			<td><input type="text" name="mobile" value="${manager.mobile}"/></td>
		</tr>
		<tr>
			<td>邮箱</td>
			<td><input type="text" name="email" value="${manager.email}"/></td>
		</tr>
		<tr>
			<td>登录IP</td>
			<td><input type="text" name="loginIP" value="${manager.loginIP}"/></td>
		</tr>
		<tr>
			<td>登录时间</td>
			<td><input type="text" name="loginTime" value="${manager.loginTime}"/></td>
		</tr>
		<tr>
			<td>是否锁定</td>
			<td><input type="text" name="isLocked" value="${manager.isLocked}"/></td>
		</tr>
		<tr>
			<td><input type="submit" value="保存" name="保存"/></td>
			<td><input type="reset" value="重置" name="重置"/></td>
		</tr>
	</table>
	</form>
</body>
</html>