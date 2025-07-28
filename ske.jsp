<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.Calendar" %>

<%
String[] weekDay = {"日", "月", "火", "水", "木", "金", "土"};

String yearParam = request.getParameter("year");
String monthParam = request.getParameter("month");

int year = 2001;
int month = 1;

try {
    year = Integer.parseInt(yearParam);
    month = Integer.parseInt(monthParam);
} catch(Exception e) {
    month = 1;
    year = 2001;
}

// 前月・翌月の計算
int prevMonth = (month == 1) ? 12 : month - 1;
int prevYear  = (month == 1) ? year - 1 : year;
int nextMonth = (month == 12) ? 1 : month + 1;
int nextYear  = (month == 12) ? year + 1 : year;

// 月初の曜日と最大日取得
Calendar cal = Calendar.getInstance();
cal.set(year, month - 1, 1); // 月は0始まり
int startDayOfWeek = cal.get(Calendar.DAY_OF_WEEK); // 日曜=1〜土曜=7
int maxDays = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%= year %>年<%= month %>月カレンダー</title>
<style>
    .ordinary { background-color: darkgray; }
    .blue { color: blue; background-color: yellow; }
    .red { color: red; background-color: yellow; }
    input { border: none; width: 98%; }
</style>
</head>
<body>
<h1><%= year %>年<%= month %>月カレンダー</h1>
<div>
<a href="ske.jsp?year=<%= prevYear %>&month=<%= prevMonth %>">＜前月</a>
<a href="ske.jsp?year=<%= nextYear %>&month=<%= nextMonth %>">翌月＞</a>
</div>
<a href="carender.jsp">年月の選択に戻る</a>

<table border="1">
<tr style="background-color: black; color: white;">
    <th>日</th>
    <th>曜日</th>
    <th>スケジュール</th>
</tr>

<%
for (int i = 0; i < maxDays; i++) {
    int dayNum = i + 1;
    int weekDayIndex = (startDayOfWeek - 1 + i) % 7; // 0〜6に変換
    String colorClass = "ordinary";

    if (weekDayIndex == 6) { // 土曜（index6）
        colorClass = "blue";
    } else if (weekDayIndex == 0) { // 日曜（index0）
        colorClass = "red";
    }
%>
<tr>
    <th class="<%= colorClass %>"><%= dayNum %></th>
    <td class="<%= colorClass %>"><%= weekDay[weekDayIndex] %></td>
    <td class="<%= colorClass %>"><input type="text" class="<%= colorClass %>" style="width: 98%; border: none;" ></td>
</tr>
<%
}
%>
</table>

</body>
</html>
