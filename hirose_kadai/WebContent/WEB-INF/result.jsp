<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<%@ page import="dice.MyDice" import="dice.NpcDice" %>
<%
MyDice myDice=(MyDice)request.getAttribute("myDice");
NpcDice npcDice=(NpcDice)request.getAttribute("npcDice");
String[] images={"","<img src=\"images/diceone.png\">","<img src=\"images/dicetwo.png\">","<img src=\"images/dicethree.png\">","<img src=\"images/dicefour.png\">","<img src=\"images/dicefive.png\">","<img src=\"images/dicesix.png\">",};
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/main.css">
<link href="https://fonts.googleapis.com/earlyaccess/nicomoji.css" rel="stylesheet">
<title>DiceBattle</title>
</head>
<body>
<div id="container">
<p>あなたのダイス</p>
<div id="mydice">
<% int[] myDices=myDice.getMyDices();
int mySum=myDice.getMyDiceSum();
for (int i=0;i<myDices.length;i++){ %>
<%=images[myDices[i]] %>
<%} %>
</div><br>
<p>合計は<%=mySum %></p>
<br>
<p>あいてのダイス</p>
<div id="npcdice">
<% int[] npcDices=npcDice.getNpcDices();
int npcSum=npcDice.getNpcDiceSum();
for(int i=0;i<npcDices.length;i++){%>
<%=images[npcDices[i]] %>
<%} %>
</div><br>
<p>合計は<%=npcSum %></p>
<%if(mySum>npcSum){ %>
<p>あなたの勝ち！</p>
<%}else if(mySum==npcSum){ %>
<p>引き分け</p>
<%}else{ %>
<p>あなたの負け</p>
<%} %>
<form action="DiceBatlle" method="post">
<button type="submit">もう一度勝負！</button>
</form>
<a href="http://localhost:8080/hirose_kadai/DiceBatlle" class="button">戻る</a>
</div>
</body>
</html>