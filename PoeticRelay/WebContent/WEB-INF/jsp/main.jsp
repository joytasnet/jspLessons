<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="model.User,model.Mutter,java.util.List" %>
    <%
    User loginUser=(User) session.getAttribute("loginUser");
    List<Mutter> mutterList=
    		(List<Mutter>) application.getAttribute("mutterList");
    String errorMsg=(String) request.getAttribute("errorMsg");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/styles.css">
<link href="https://fonts.googleapis.com/earlyaccess/nicomoji.css" rel="stylesheet">
<title>詩のリレー</title>
</head>
<body>
<div class="tfull-img">
<h1>バトンの欠片メイン</h1>
<p>
<%=loginUser.getName() %>さん、ログイン中
<a href="/PoeticRelay/Logout">ログアウト</a>
<p><a href="/PoeticRelay/Main">更新</a></p>
<form action="/PoeticRelay/Main" method="post">
<input type="text" name="text">
<input type="submit" value="詩を呟く">
</form>
<%if(errorMsg!=null){ %>
<p><%=errorMsg %>></p>
<%} %>
<%for(Mutter mutter:mutterList) {%>
<p><%=mutter.getUserName()%>:<%=mutter.getText() %></p>
<%} %>
</div>
</body>
</html>