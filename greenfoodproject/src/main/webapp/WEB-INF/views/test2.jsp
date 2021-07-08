<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" 
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="${contextPath}/uploadtest" method="POST" enctype="multipart/form-data">
	<input type=file id="videos" name= "videos" accept="video/*" value="업로드">
	<span>안녕!!!!@#@#!@#!@#!#!!!</span>
	<input type=submit value="제출">
</form>
</body>
</html>