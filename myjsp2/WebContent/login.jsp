<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆</title>
<style>
	input{
		display:block;
	}
</style>
</head>
<body>
<%
	Object error=session.getAttribute("error");//从session里面取数据
	String errorStr=" ";
	if(error!=null){
		errorStr=error.toString();//把对象重写成字符串
		session.removeAttribute("error");
		
		%><a href="index.jsp">首页</a><%
	}
%>
<h2>这是个登陆页面</h2>
<h3><%=errorStr%></h3>
<p></p>
	<form action="login_action" method="post">
		<input type="text" name="userName">
		<input type="password" name="pwd">
		<input type="submit" value="提交" name="sub">
	</form>
</body>
</html>