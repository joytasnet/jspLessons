<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<h1>ダイスで勝負！</h1>
<P>遊び方</P>
<p>5個のダイスを振り、その合計をポイントとしてコンピューターと勝負し大きいほうの勝利となります。</p>
<p>ただし、同じダイスが5個出た場合50ポイントとなります。</p>
<form action="DiceBatlle" method="post">
<button type="submit">勝負！</button>
</form>
</div>
</body>
</html>