<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>

 <style>
	marquee{
		color:blue;
	}
 </style>

</head>

<body>
	<h3>这是一个首页</h3>
	<%
		Object uN=session.getAttribute("uN");
		String usN="";
		if(uN!=null){
			usN="欢迎登陆,"+uN.toString();
		}
	%>
	
	<p><%=usN%></p>
	<%
		if(uN==null){%>
			<a href="login.jsp">登陆</a>
			<a href="logon.jsp">注册</a>
		<% }else{%>
			<a href="index_action.jsp">退出</a>
			<a href="logon.jsp">注册</a>
		<%}%>
	
		
	
</body>
</html>