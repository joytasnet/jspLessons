<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String[] picts={"gu","choki","pa"};
String[] handNames={"ぐー","ちょき","ぱー"};
String[] results={"ざんねん…あいこです","おみごと！まけです！","ざんねん…かちです"};
int pcHand=Integer.parseInt(request.getParameter("pcHand"));
int hand=Integer.parseInt(request.getParameter("hand"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/main.css">
<link href="https://fonts.googleapis.com/css?family=M+PLUS+Rounded+1c" rel="stylesheet">
<title>結果！</title>
</head>
<body>
	<div>
		<p>あなた	<br><img src="images/<%=picts[hand]%>.png"></p>
		<p>PC<br><img src="images/<%=picts[pcHand]%>.png"></p>
	</div>
	<p><%=results[(hand+3 -pcHand)%3] %></p>
	<a href="http://localhost:8080/jyanken2/start.jsp"><p>もういちどショウブ!</p></a>
</body>
</html>