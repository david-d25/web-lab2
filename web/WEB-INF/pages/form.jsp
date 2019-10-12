<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="ru">
<head>
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <meta charset="utf-8">
  <title>лаба2_v2_правки_финал_v2_ФИНАЛ_шрифт_правки финальные_правки отступы_олег где макет</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/main.css">
</head>
<body>
<div class="header">
  <div class="container">
    <div class="header__student-info">
      Давтян Д. А., P3101, вариант 201007
    </div>
  </div>
</div>

<div class="content">
  <div class="container">

    <div class="graph-view-wr">
<%--      <svg class="graph-view panel" viewBox="0 0 1000 1000">--%>

<%--        <path   d=" M500 500l -200 0 200 -400ZM300 500a200 200 45 0 0 200--%>
<%--                            200l0 -200ZM500 500l200 0 0 400 -200 0 0 -400Z"--%>
<%--                fill="#349eeb"--%>
<%--                stroke-width="0"></path>--%>

<%--        <path   d=" M0 500l1000 0 -30 -20m30 20l-30 20M100 490l0 20M300 490l0 20M700 490l0 20--%>
<%--                            M900 490l0 20M500 1000l0 -1000 -20 30m20 -30l20 30M490 900l20 0M490 700l20 0--%>
<%--                            M490 300l20 0M490 100l20 0"--%>
<%--                stroke="black"--%>
<%--                fill="transparent"--%>
<%--                stroke-width="3"></path>--%>

<%--        <text x="10%" y="49%" font-size="48" class="graph-view__text-x">-R</text>--%>
<%--        <text x="30%" y="49%" font-size="48" class="graph-view__text-x">-R/2</text>--%>
<%--        <text x="70%" y="49%" font-size="48" class="graph-view__text-x">R/2</text>--%>
<%--        <text x="90%" y="49%" font-size="48" class="graph-view__text-x">R</text>--%>
<%--        <text x="97%" y="48%" font-size="48" class="graph-view__text-x">x</text>--%>

<%--        <text x="52%" y="10%" font-size="48" class="graph-view__text-y">R</text>--%>
<%--        <text x="52%" y="30%" font-size="48" class="graph-view__text-y">R/2</text>--%>
<%--        <text x="52%" y="70%" font-size="48" class="graph-view__text-y">-R/2</text>--%>
<%--        <text x="52%" y="90%" font-size="48" class="graph-view__text-y">-R</text>--%>
<%--        <text x="53%" y="3%" font-size="48" class="graph-view__text-y">y</text>--%>

<%--      </svg>--%>
    </div>

    <div class="controls">

      <form method="POST" action="${pageContext.request.contextPath}">

        <div class="panel my-class">
          <p class="panel__title">Координата X</p>
          <div class="panel__content">
            <label><input type="radio" name="x" value="-2.0">-2</label>
            <label><input type="radio" name="x" value="-1.5">-1.5</label>
            <label><input type="radio" name="x" value="-1.0">-1</label>
            <label><input type="radio" name="x" value="-0.5">-0.5</label>
            <label><input type="radio" name="x" value="0.0">0</label>
            <label><input type="radio" name="x" value="0.5">0.5</label>
            <label><input type="radio" name="x" value="1.0">1</label>
            <label><input type="radio" name="x" value="1.5">1.5</label>
            <label><input type="radio" name="x" value="2.0">2</label>\
          </div>
        </div>

        <div class="panel">
          <label for="y" class="panel__title">Координата Y</label>
          <input type="text" name="y" id="y">
        </div>

        <div class="panel">
          <p class="panel__title">Число R</p>
          <div class="panel__content">
            <label><input type="checkbox" name="r" value="1">1</label>
            <label><input type="checkbox" name="r" value="2">2</label>
            <label><input type="checkbox" name="r" value="3">3</label>
            <label><input type="checkbox" name="r" value="4">4</label>
            <label><input type="checkbox" name="r" value="5">5</label>
          </div>
        </div>

        <div class="panel hidden err-msg" id="err-msg"></div>

        <button id="submit-btn" type="submit" class="submit-btn">Run this shit!</button>

      </form>
    </div>

  </div>
</div>
</body>
</html>
