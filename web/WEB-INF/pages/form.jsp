<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="ru">
<head>
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <meta charset="utf-8">
  <title>лаба2_v2_правки_финал_v2_ФИНАЛ_шрифт_правки финальные_правки отступы_олег где макет</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/main.css">
</head>
<body>
<jsp:include page="/partials/header.html"/>

<div class="content">
  <div class="container">

    <div class="graph-view-wr">
      <div class="panel">
        <canvas id="graph-canvas" class="graph-view" width="1000" height="1000"></canvas>
      </div>
    </div>

    <div class="controls">

      <form method="post" action="${pageContext.request.contextPath}/control">

        <div class="panel">
          <label for="x" class="panel__title">Координата X</label>
          <input type="text" name="x" id="x" class="x_input" placeholder="(-5; 3)" autocomplete="off">
        </div>

        <div class="panel">
          <label class="panel__title" for="y">Координата Y</label>
          <div class="panel__content">
            <select id="y">
              <option value="-2.0">-2</option>
              <option value="-1.5">-1.5</option>
              <option value="-1.0">-1</option>
              <option value="-0.5">-0.5</option>
              <option value="0.0" selected>0</option>
              <option value="0.5">0.5</option>
              <option value="1.0">1</option>
              <option value="1.5">1.5</option>
              <option value="2.0">2</option>
            </select>
          </div>
          <input type="hidden" name="y" value="0">
        </div>

        <div class="panel">
          <p class="panel__title">Число R</p>
          <div class="panel__content">
            <button class="r_button" type="button" data-setter="r" data-value="1">1</button>
            <button class="r_button" type="button" data-setter="r" data-value="1.5">1.5</button>
            <button class="r_button" type="button" data-setter="r" data-value="2">2</button>
            <button class="r_button" type="button" data-setter="r" data-value="2.5">2.5</button>
            <button class="r_button" type="button" data-setter="r" data-value="3">3</button>
          </div>
          <input type="hidden" id="r" name="r" value="">
        </div>

        <div class="panel hidden err-msg" id="err-msg"></div>

        <button id="submit-btn" type="submit" class="submit-btn">Run this shit!</button>

      </form>
    </div>

  </div>
</div>
<script src="${pageContext.request.contextPath}/scripts/graphpicker.js"></script>
<script src="${pageContext.request.contextPath}/scripts/main.js"></script>
</body>
</html>
