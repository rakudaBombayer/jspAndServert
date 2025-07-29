<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>


<%@ page import="model.Human" %>

<%

Human h = (Human)request.getAttribute("human");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>あいうえお</title>
</head>
<body>
<div><%= h.getName() %>さんは<%= h.getAge() %>歳です</div>
</body>
</html>