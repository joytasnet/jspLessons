<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Bill,java.util.List" %>
<%
List<Bill>billList=(List<Bill>) session.getAttribute("billList");
%>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="css/main.css">
  <link href="https://fonts.googleapis.com/earlyaccess/nicomoji.css" rel="stylesheet">
<meta charset="UTF-8">
<title>ビルをたてよう</title>
</head>
<body>
<h1>ビルをたてよう</h1>
<% if(Bill.getCount()<15){ %>
<form action="/buildingApp/BuildingMain" method="post">
ビルのたかさ<br>
<input type="number" name="height" min="5" max="16" value="5"><br>
<button type="submit" name="btn">けんせつ</button>
</form>
<% } %>
<% if(Bill.getCount()==0){ %>
<p>まだなにもない</p>
<% } %>
<% if(Bill.getCount()>=15){ %>
<p>ステキなまちになりました</p>
<button class="nextbutton"><a href="/buildingApp/BuildingMain" class="link">あらたなまちへ</a></button>
<% } %>
<div class="billAll">
<% if(Bill.getCount()>0){ %>
	<div class="bills">
	<% for (Bill bill:billList){ %>
	<div class="oneBill">
	<% int[] billLow=bill.getBillLow(); %>
		<% for(int i=0;i<bill.getHeight();i++) { %>
		<img src="images/bill<%=billLow[i]%>.jpg"><br>
		<% } %>
	</div>
	<% } %>
	</div>
<% } %>
</div>
</body>
</html>