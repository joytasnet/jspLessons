<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.Mining"%>
<%
Mining mining=(Mining)session.getAttribute("mining");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Gem Mining</title>
	<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/3.18.1/build/cssreset/cssreset-min.css">
	<link rel="stylesheet" href="css/main.css"/>
</head>
<body>
<div id="container">
	<div class="ug1">
		<h1><%=mining.getMsg() %></h1>
	</div>
	<div class="ug2">
		<div class="imageItems">
			<% for(int i=0;i<mining.getsImages().length;i++){ %>
				<%if(i%5 == 0 && i != 0){ %>
					<br>
				<% } %>
				<%if(mining.getsImages()[i]==0) {%>
					<a href="/gemMining/MiningApp?action=<%= i %>"><img src="images/stone<%= mining.getsImages()[i] %>.png"></a>
				<%}else{ %>
					<img src="images/stone<%= mining.getsImages()[i] %>.png">
				<%} %>
			<% } %>
		</div>
	</div>
	<div class="result">
		<p>残り<%=mining.getPick() %>回</p>
		<% if(mining.getPick()==0 || mining.getMsg().contains("宝石を掘り当てた！")) { %>
			<a href="/gemMining/MiningApp"><p>もう一回採掘する</p></a>
		<% } %>
	</div>
</div>
</body>
</html>