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
	 <!-- commandName 控制器参数中对象名称 -->  
    <form:form commandName="manager">  
        <!-- 显示全部错误信息用* -->  
        <form:errors path="*"/>  
    </form:form>  
    <hr/>  
    <!-- 对象名称.属性名称    如果该对象的指定属性没有通过校验那么显示错误信息(根据当前语言显示不同国家的文字) -->  
    <form:errors path="manager.age"/>  
</body>
</html>