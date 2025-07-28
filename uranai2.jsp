<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.Date, java.text.SimpleDateFormat" %>


<!DOCTYPE html>
<html>
<head>
    <title>今日の運勢</title>
</head>
<body>
    <h2><%= request.getAttribute("today") %> の運勢</h2>
    <p>あなたの運勢は「<strong><%= request.getAttribute("luck") %></strong>」です！</p>
</body>
</html>