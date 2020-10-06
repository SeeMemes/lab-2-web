<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 001 01.10.20
  Time: 10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ru">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta name="keywords" content="lab, prog, ifmo" />
  <meta name="description" content="Лаба 1 поп ПИПу" />
  <link href="css/style.css" rel="stylesheet" type="text/css" />
  <link href="img/icon.jpg" rel="shortcut icon" type="image/x-icon" />
  <title>Лабораторная работа №2 по Веб-Программированию</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script type="text/javascript" src="js/LabCheck.js"></script>
  <script type="text/javascript">
    $(document).ready(function() {
      $("button:button").on('click', function() {
          var $checkbutton = $(this);
          var group = "button:button[name='" + $checkbutton.attr("name") + "']";
          $(group).attr("disabled", false);
          $checkbutton.attr("disabled", true);
      });
    });
  </script>
</head>

<body>
<header>
  <table id="header-table">
    <tr>
      <td>
        <a id="logo" class="name_class">Лабораторная работа №2</a>
      </td >
      <td>
        <text id="about" class="name_class">
          Вариант - 10223
        </text>
      </td>
      <td>
        <img src="img/ifmo.png" alt="Логотип итмо" id="ifmo" align="right"/>
      </td >
    </tr>
  </table>
</header>

<main>
  <table>
    <tr>
      <td>
        <svg width="800" height="600" xmlns="http://www.w3.org/2000/svg">
          <!-- Created with Method Draw - http://github.com/duopixel/Method-Draw/ -->
          <g>
            <title>Layer 1</title>
            <path id="svg_37" d="m199.65515,299.62284l199.65523,199.68755l0,-200.00002" opacity="0.5" fill-opacity="null" stroke-width="NaN" stroke="#000000" fill="#00ffff"/>
            <path id="svg_36" d="m200.34481,299.62284c0,0 199.31037,-190.34485 199.31037,-190.34485c0,0 0,190.34485 0,190.34485" opacity="0.5" stroke-width="NaN" stroke="#00ffff" fill="#00ffff"/>
            <rect id="svg_16" height="200" width="200" y="299.62284" x="399.65517" stroke-width="0" fill="#5fbf00"/>
            <line id="svg_2" y2="599.60936" x2="400" y1="0.32369" x1="399.64286" stroke-width="1.5" stroke="#000" fill="none"/>
            <line id="svg_3" y2="200.32368" x2="966.78567" y1="199.60939" x1="966.78567" stroke-width="1.5" stroke="#000" fill="none"/>
            <line id="svg_4" y2="300" x2="700" y1="300" x1="100" stroke-width="1.5" stroke="#000" fill="none"/>
            <line id="svg_6" y2="15" x2="385" y1="0.32355" x1="399.64284" stroke-width="1.5" stroke="#000" fill="none"/>
            <line id="svg_7" y2="15" x2="385" y1="0.32355" x1="399.64284" stroke-width="1.5" stroke="#000" fill="none"/>
            <line transform="rotate(-90 407.3215942382813,7.661773204803439) " id="svg_11" y2="15" x2="400.00001" y1="0.32355" x1="414.64284" stroke-width="1.5" stroke="#000" fill="none"/>
            <line transform="rotate(-90 692.3275146484376,291.9468383789063) " id="svg_12" y2="299.28582" x2="685.00013" y1="284.60936" x1="699.64297" stroke-width="1.5" stroke="#000" fill="none"/>
            <line id="svg_13" y2="315.00003" x2="685.00003" y1="300.32358" x1="699.64287" stroke-width="1.5" stroke="#000" fill="none"/>
            <line id="svg_14" y2="315.00003" x2="685.00003" y1="300.32358" x1="699.64287" stroke-width="1.5" stroke="#000" fill="none"/>
            <line stroke="#000000" id="svg_17" y2="290" x2="599.65519" y1="310" x1="600" fill="none"/>
            <line stroke="#000000" id="svg_18" y2="290" x2="499.65518" y1="310" x1="499.99999" fill="none"/>
            <line stroke="#000000" id="svg_19" y2="290" x2="299.65516" y1="310" x1="299.99997" fill="none"/>
            <line stroke="#000000" id="svg_20" y2="290" x2="199.65515" y1="310" x1="199.99996" fill="none"/>
            <line transform="rotate(90 399.82965087890625,390.3463439941407) " stroke="#000000" id="svg_23" y2="380.34484" x2="399.65517" y1="400.34484" x1="399.99998" fill="none"/>
            <line transform="rotate(90 399.8296508789063,500.00335693359375) " stroke="#000000" id="svg_24" y2="490.00002" x2="399.65517" y1="510.00002" x1="399.99998" fill="none"/>
            <line transform="rotate(90 399.8296508789063,190.3444519042969) " stroke="#000000" id="svg_25" y2="180.34482" x2="399.65517" y1="200.34482" x1="399.99998" fill="none"/>
            <line transform="rotate(90 399.82965087890625,109.65522766113286) " stroke="#000000" id="svg_26" y2="99.65515" x2="399.65517" y1="119.65515" x1="399.99998" fill="none"/>
            <path id="svg_28" d="m199.65515,299.62284" opacity="0.5" fill-opacity="null" stroke-opacity="null" stroke-width="null" stroke="#000000" fill="none"/>
            <path id="svg_30" d="m199.65515,299.62284" opacity="0.5" fill-opacity="null" stroke-opacity="null" stroke-width="null" stroke="#000000" fill="none"/>
            <path stroke="#000000" id="svg_33" d="m199.65514,299.27799c2.06897,-184.15903 200.68969,-189.65632 200.34489,-189.96765" opacity="0.5" stroke-opacity="null" stroke-width="NaN" fill="#00ffff"/>
            <path id="svg_34" d="m200.34481,299.62284" opacity="0.5" stroke-opacity="null" stroke-width="NaN" stroke="#000000" fill="#00ffff"/>
            <text xml:space="preserve" text-anchor="start" font-family="Helvetica, Arial, sans-serif" font-size="24" id="svg_38" y="118.24351" x="415.51724" fill-opacity="null" stroke-width="0" stroke="#000000" fill="#000000">R</text>
            <text style="cursor: move;" xml:space="preserve" text-anchor="start" font-family="Helvetica, Arial, sans-serif" font-size="24" id="svg_39" y="198.24352" x="415.51724" fill-opacity="null" stroke-width="0" stroke="#000000" fill="#000000">R/2</text>
            <text style="cursor: move;" xml:space="preserve" text-anchor="start" font-family="Helvetica, Arial, sans-serif" font-size="24" id="svg_40" y="281.00215" x="480.34484" fill-opacity="null" stroke-width="0" stroke="#000000" fill="#000000">R/2</text>
            <text xml:space="preserve" text-anchor="start" font-family="Helvetica, Arial, sans-serif" font-size="24" id="svg_41" y="281.00215" x="590.00002" fill-opacity="null" stroke-width="0" stroke="#000000" fill="#000000">R</text>
          </g>
        </svg>
      </td>
      <td>
        <form id="info-form" name="info_form" class="box" onsubmit="return check(event)" method="post">
          <p>X: </p>
          <%  for (int x = -3; x <= 5; x++) { %>
              <button type="button" name="x" value="<%=x%>" id="x<%=x%>" class="button"><%=x%></button>
          <% } %>
          <br/> <p>Y: </p> <input type="text" name="Y-value" id="Y-value" maxlength="7" placeholder=" (-3;5) ">
          <br/>
          <p>R: </p>
          <%  for (int x = 1; x <= 5; x++) { %>
            <button type="button" name="r" value="<%=x%>" id="r<%=x%>" class="button"><%=x%></button>
          <% } %>
          <br/>
          <input type="submit" name="" id="coordinates-submit" value="Submit"/>

        </form>
      </td>
      <td colspan="5" id="outputContainer">
        <h4>
          <span class="outputStub notification">Результаты отсутствуют</span>
        </h4>
      </td>
    </tr>
  </table>
</main>

<footer>
  <text id="about" >
    Провоторов Александр Владимирович, P3210, 2020
  </text>
</footer>
<script src="js/analyzer.js"></script>
</body>
</html>