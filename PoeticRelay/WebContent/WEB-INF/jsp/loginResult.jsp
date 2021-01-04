<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="model.User" %>
    <%
    User loginUser=(User)session.getAttribute("loginUser");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/styles.css">
<link href="https://fonts.googleapis.com/earlyaccess/nicomoji.css" rel="stylesheet">
<title>詩のリレーログイン</title>
</head>
<body>
<div class="cfull-img">
<%if(loginUser!=null){ %>
<p>ログインに成功しました</p>
<p>ようこそ<%=loginUser.getName() %>さん</p>
<a href="/PoeticRelay/Main">まだ1本の形をなさぬバトンの欠片投稿・閲覧へ</a><br>
<a href="http://shinorelay.singsong.jp/">詩のリレーへ</a>
<%}else{ %>
<p>ログインに失敗しました</p>
<a href="/PoeticRelay/">Topへ</a>
<%} %>
</div>
</body>
</html>