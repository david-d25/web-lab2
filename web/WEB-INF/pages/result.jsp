<%@ page import="ru.david.web1.Result" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Результаты</title>
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <meta charset="utf-8">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/main.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/result.css">
</head>
<body>
<%!
  private String timeFriendly(long millis) {
    long delta = System.currentTimeMillis() - millis;
    if (delta < 1000)
        return "Только что";
    if (delta < 1000*60)
        return delta/1000 + " сек. назад";
    if (delta < 1000*60*60)
        return delta/1000/60 + " мин. назад";
    return delta/1000/60/60 + " часов назад";
  }
%>
<%
  String resultStatus = (String)session.getAttribute("last_result_status");

  @SuppressWarnings("unchecked")
  List<Result> results = (List<Result>) session.getAttribute("results");
  if (results != null) {
    while (results.size() > 10)
      results.remove(results.size() - 1);
  }
%>
<jsp:include page="/partials/header.html"/>

<div class="content">
  <div class="container">
    <div class="graph-view-wr left">
      <div class="panel">
        <canvas id="graph-canvas" class="graph-view" width="1000" height="1000"></canvas>
      </div>
    </div>

    <div class="right">
      <% if (results != null && resultStatus != null) { %>
      <div class="panel">
        <div class="panel__title">Результат</div>
        <div class="panel__content">
          <% if ("ok".equals(resultStatus)) { %>
          <div class="result_hit"><%= results.get(0).hit ? "Попадание" : "Мимо" %></div>
          <a href="${pageContext.request.contextPath}/" class="result_again">Еще раз</a>
          <% } else if ("wrong_data".equals(resultStatus)) { %>
          <div class="result_error">Введены неверные данные</div>
          <% } %>
        </div>
      </div>
      <% } %>

      <div class="panel">
        <div class="panel__title">Предыдущие 10 результатов</div>
        <div class="panel__content">
          <table class="results">
            <tr>
              <th>X</th>
              <th>Y</th>
              <th>R</th>
              <th>Попадание</th>
              <th>Время</th>
            </tr>
            <% if (results != null) {%>
            <% for (Result result : results) { %>
            <tr>
              <td><%= result.x %></td>
              <td><%= result.y %></td>
              <td><%= result.r %></td>
              <td><%= result.hit ? "Даааа" : "Нит" %></td>
              <td><%= timeFriendly(result.timestamp) %></td>
            </tr>
            <% }} %>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>
<script src="${pageContext.request.contextPath}/scripts/graphpicker.js"></script>
<script src="${pageContext.request.contextPath}/scripts/results.js"></script>
</body>
</html>
