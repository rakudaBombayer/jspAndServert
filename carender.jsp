<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
String[] year = {
	    "2001", "2002", "2003", "2004", "2005", "2006", "2007", "2008", "2009", 
	    "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018", 
	    "2019", "2020","2021","2022","2023","2024","2025"
	};




	String[] month = {
		    "1", "2", "3", "4", "5", "6", "7", "8", "9", 
		    "10", "11", "12"};

		
%>

<!-- <style>
  .container {
    display: flex;
    flex-wrap: nowrap; 
  }
  .item {
    margin: 5px;
    padding: 10px;

    text-align: center;
    width: 10%; /* 単純に10%の幅で並べる */
  }
  .link{
  	display: inline-block;
  	margin: 8px;
  	padding: 4px; 
  }
  
</style> -->


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>カレンダー</title>
</head>
<h1>カレンダー</h1>
<body>

<table border="1">
<% for(int i = 0; i < year.length; i++) { %>
    	<tr>
    		<td style="background-color: #b8860b;"><%= year[i] %>年<td>
    	
    	<% for(int j = 0; j < month.length; j++) { %>	
    	<td style="background-color: lightskyblue;">
    		<a href="ske.jsp?year=<%= year[i] %>&month=<%= month[j] %>" class="link">
    			<%= month[j] %>月
    		</a>
    	<% } %>
    	</td>
    	</tr>
		
<% } %>
</table>



</body>
</html>