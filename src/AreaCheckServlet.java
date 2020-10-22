import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.*;
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
        try {
            double x = Double.parseDouble(req.getParameter("x"));
            double y = Double.parseDouble(req.getParameter("y"));
            double r = Double.parseDouble(req.getParameter("r"));
            String key = req.getParameter("key");
            PrintWriter writer = resp.getWriter();
            try {
                if (checkData(x, y, r, key)) {
                    tableRows.add(new Point(x, y, r).toString());
                    for (String tableRow : tableRows) writer.println(tableRow);
                } else resp.sendError(HttpServletResponse.SC_BAD_REQUEST);
            } finally {
                if (writer != null) writer.close();
            }
        } catch (NullPointerException | NumberFormatException e) {
            /*resp.sendError(HttpServletResponse.SC_BAD_REQUEST);*/
            PrintWriter writer = resp.getWriter();
            for (String tableRow: tableRows) writer.println(tableRow);
            try {
                writer.println("<tr><td>" + Double.parseDouble(req.getParameter("x")) + "</td>");
            } catch (NullPointerException e1) {writer.println("<tr><td>" + "n/d" + "</td>");}
            try {
                writer.println("<td>" + Double.parseDouble(req.getParameter("y")) + "</td>");
            } catch (NullPointerException e1) {writer.println("<td>" + "n/d" + "</td>");}
            try {
                writer.println(Double.parseDouble(req.getParameter("r")));
            } catch (NullPointerException e1) {writer.println("<td>" + "n/d" + "</td>");}
            writer.println("<td style='color: red>" + "false" + "</td>");
            writer.println("<td>" + new Date().toString() + "</td></tr>");
        }
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