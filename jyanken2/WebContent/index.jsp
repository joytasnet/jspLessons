<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String[] picts={"gu","choki","pa"};
String[] handNames={"ぐー","ちょき","ぱー"};
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/main.css">
<link href="https://fonts.googleapis.com/css?family=M+PLUS+Rounded+1c" rel="stylesheet">
<title>じゃんけんぽん</title>
<meta http-equiv="refresh" content="1;URL='http://localhost:8080/jyanken2/gameover.jsp'" />
</head>
<body>
<form method="post" action="http://localhost:8080/jyanken2/result.jsp">
	<p>PC</p>
	<% int pcHand=(int)(Math.random()*3);%>
	<p><img src="images/<%=picts[pcHand]%>.png"></p>
	<input type="hidden" name="pcHand" value="<%=pcHand %>">

	<%for(int i=0;i<handNames.length;i++){
		String checked= i==0 ? "checked":"";%>
		<button type="submit" name="hand" value="<%= i %>"><%= handNames[i] %></button>
	<%} %>
</form>
</body>
</html>