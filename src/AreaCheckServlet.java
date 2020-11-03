import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.text.NumberFormat;
import java.util.*;
import java.io.*;

public class AreaCheckServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContext context = req.getServletContext();
        resp.setContentType("text/html;charset=UTF-8");
        List<String> tableRows = (List) context.getAttribute("tableRows");
        if (tableRows == null) {
            tableRows = new ArrayList<String>();
            context.setAttribute("tableRows", tableRows);
            tableRows.add("<table id='outputTable'><tr>" +
                    "<th>x</th>" +
                    "<th>y</th>" +
                    "<th>r</th>" +
                    "<th>Точка входит в ОДЗ</th>" +
                    "<th>Текущее время</th></tr>");
        }

        boolean x = req.getParameter("x")==null ? true : false;
        boolean y = req.getParameter("y")==null ? true : false;
        boolean r = req.getParameter("r")==null ? true : false;
        boolean key = req.getParameter("key")==null ? true : false;
        PrintWriter writer = resp.getWriter();
        if (x || y || r || key) {
            writer.println("Ошибка: одно из переданных значений неверно или не отвечает критериям" +
                    " указанным на главной странице. Попробуйте ввести другие значения");
        }
        else {
            try {
                double x_double = Double.parseDouble(req.getParameter("x"));
                double y_double = Double.parseDouble(req.getParameter("y"));
                double r_double = Double.parseDouble(req.getParameter("r"));
                try {
                    if (checkData(x_double, y_double, r_double, req.getParameter("key"))) {
                        tableRows.add(new Point(x_double, y_double, r_double).toString());
                        for (String tableRow : tableRows) writer.println(tableRow);
                    } else resp.sendError(HttpServletResponse.SC_BAD_REQUEST);
                } finally {
                    if (writer != null) writer.close();
                }
            }
            catch (NumberFormatException e) {
                writer.println("Ошибка: одно из переданных значений неверно или не отвечает критериям" +
                        " указанным на главной странице. Попробуйте ввести другие значения");
            }
        }
    }

    private String createNullTableRow(String x, String y, String r) {
        return "<tr><td>" + x + "</td>" +
                "<td>" + y + "</td>" +
                "<td>" + r + "</td>" +
                "<td style='color: red" + "'>" + false + "</td>" +
                "<td>" + new Date().toString() + "</td></tr>";
    }

    private boolean checkData(double x, double y, double r, String key) {
        Double[] xInterval = {-3.0, -2.0, -1.0, 0.0, 1.0, 2.0, 3.0, 4.0, 5.0};
        Double[] rInterval = {1.0, 2.0, 3.0, 4.0, 5.0};
        if (key.equals("button"))
            return (Arrays.asList(xInterval).contains(x) && (y >= -3 && y <= 5) && Arrays.asList(rInterval).contains(r));
        else if (key.equals("svg")) return (Arrays.asList(rInterval).contains(r));
        else return false;
    }

    @Override
    public String getServletInfo() {
        return "AreaCheckServlet - осуществляет проверку попадания точки в область на координатной плоскости и " +
                "формирует HTML-страницу с результатами проверки. Должен обрабатывать все запросы, " +
                "содержащие сведения о координатах точки и радиусе области.";
    }
}