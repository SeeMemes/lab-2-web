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
        <svg width="350" height="350" xmlns="http://www.w3.org/2000/svg" id="drawing" viewBox="0 0 600 600" margin-left="auto" margin-right="auto">
          <!-- Created with Method Draw - http://github.com/duopixel/Method-Draw/ -->
          <g>
            <path fill="#00ffff" stroke="#000000" stroke-width="NaN" fill-opacity="null" opacity="0.5" d="m99.63031,299.62284l199.65523,199.68755l0,-200.00002" id="svg_37"/>
            <path fill="#00ffff" stroke="#00ffff" stroke-width="NaN" opacity="0.5" d="m100.31997,299.62284c0,0 199.31037,-190.34485 199.31037,-190.34485c0,0 0,190.34485 0,190.34485" id="svg_36"/>
            <rect fill="#5fbf00" stroke-width="0" x="299.63033" y="299.62284" width="200" height="200" id="svg_16"/>
            <line fill="none" stroke="#000" stroke-width="1.5" x1="299.61802" y1="0.32369" x2="299.97516" y2="599.60936" id="svg_2"/>
            <line fill="none" stroke="#000" stroke-width="1.5" x1="966.78567" y1="199.60939" x2="966.78567" y2="200.32368" id="svg_3"/>
            <line fill="none" stroke="#000" stroke-width="1.5" x1="-0.02484" y1="300" x2="599.97516" y2="300" id="svg_4"/>
            <line fill="none" stroke="#000" stroke-width="1.5" x1="299.618" y1="0.32355" x2="284.97516" y2="15" id="svg_6"/>
            <line fill="none" stroke="#000" stroke-width="1.5" x1="299.618" y1="0.32355" x2="284.97516" y2="15" id="svg_7"/>
            <line fill="none" stroke="#000" stroke-width="1.5" x1="314.618" y1="0.32355" x2="299.97517" y2="15" id="svg_11" transform="rotate(-90 307.2966918945313,7.661773204803439) "/>
            <line fill="none" stroke="#000" stroke-width="1.5" x1="599.61813" y1="284.60936" x2="584.97529" y2="299.28582" id="svg_12" transform="rotate(-90 592.3027343750001,291.9468383789063) "/>
            <line fill="none" stroke="#000" stroke-width="1.5" x1="599.61803" y1="300.32358" x2="584.97519" y2="315.00003" id="svg_13"/>
            <line fill="none" stroke="#000" stroke-width="1.5" x1="599.61803" y1="300.32358" x2="584.97519" y2="315.00003" id="svg_14"/>
            <line fill="none" x1="499.97516" y1="310" x2="499.63035" y2="290" id="svg_17" stroke="#000000"/>
            <line fill="none" x1="399.97515" y1="310" x2="399.63034" y2="290" id="svg_18" stroke="#000000"/>
            <line fill="none" x1="199.97513" y1="310" x2="199.63032" y2="290" id="svg_19" stroke="#000000"/>
            <line fill="none" x1="99.97512" y1="310" x2="99.63031" y2="290" id="svg_20" stroke="#000000"/>
            <line fill="none" x1="299.97514" y1="400.34484" x2="299.63033" y2="380.34484" id="svg_23" stroke="#000000" transform="rotate(90 299.80474853515625,390.3463439941407) "/>
            <line fill="none" x1="299.97514" y1="510.00002" x2="299.63033" y2="490.00002" id="svg_24" stroke="#000000" transform="rotate(90 299.8047485351563,500.00335693359375) "/>
            <line fill="none" x1="299.97514" y1="200.34482" x2="299.63033" y2="180.34482" id="svg_25" stroke="#000000" transform="rotate(90 299.8047485351563,190.3444519042969) "/>
            <line fill="none" x1="299.97514" y1="119.65515" x2="299.63033" y2="99.65515" id="svg_26" stroke="#000000" transform="rotate(90 299.8047485351563,109.65522766113284) "/>
            <path fill="none" stroke="#000000" stroke-width="null" stroke-opacity="null" fill-opacity="null" opacity="0.5" d="m99.63031,299.62284" id="svg_28"/>
            <path fill="none" stroke="#000000" stroke-width="null" stroke-opacity="null" fill-opacity="null" opacity="0.5" d="m99.63031,299.62284" id="svg_30"/>
            <path fill="#00ffff" stroke-width="NaN" stroke-opacity="null" opacity="0.5" d="m99.6303,299.27799c2.06897,-184.15903 200.68969,-189.65632 200.34489,-189.96765" id="svg_33" stroke="#000000"/>
            <path fill="#00ffff" stroke="#000000" stroke-width="NaN" stroke-opacity="null" opacity="0.5" d="m100.31997,299.62284" id="svg_34"/>
            <text fill="#000000" stroke="#000000" stroke-width="0" fill-opacity="null" x="315.4924" y="118.24351" id="svg_38" font-size="24" font-family="Helvetica, Arial, sans-serif" text-anchor="start" xml:space="preserve">R</text>
            <text fill="#000000" stroke="#000000" stroke-width="0" fill-opacity="null" x="315.4924" y="198.24352" id="svg_39" font-size="24" font-family="Helvetica, Arial, sans-serif" text-anchor="start" xml:space="preserve">R/2</text>
            <text fill="#000000" stroke="#000000" stroke-width="0" fill-opacity="null" x="380.32" y="281.00215" id="svg_40" font-size="24" font-family="Helvetica, Arial, sans-serif" text-anchor="start" xml:space="preserve">R/2</text>
            <text fill="#000000" stroke="#000000" stroke-width="0" fill-opacity="null" x="489.97518" y="281.00215" id="svg_41" font-size="24" font-family="Helvetica, Arial, sans-serif" text-anchor="start" xml:space="preserve">R</text>
          </g>
        </svg>
      </td>
    </tr>
    <tr>
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
    </tr>
  </table>
  <br/>
  <table>
    <tr>
      <td colspan="5" id="outputContainer">
        <h4>
          <span class="outputStub notification">Введите данные чтобы посмотреть таблицу</span>
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