<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="ex.Employee" %>

<%
    // Employeeクラスのインスタンスを生成
    Employee employee = new Employee("12345", "田中太郎");
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee情報</title>
</head>
<body>
<p>
<%
    for (int i = 0; i < 10; i++) {
        if ((i + 1) % 3 == 1) { // 1, 4, 7, 10行目に該当
            out.println("<p style='color: red;'>IDは" + employee.getId() + ", 名前は" + employee.getName() + "です。</p>");
        } else {
            out.println("<p>IDは" + employee.getId() + ", 名前は" + employee.getName() + "です。</p>");
        }
    }
%>
</p>
</body>
</html>
