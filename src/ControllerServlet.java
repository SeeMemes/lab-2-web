import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ControllerServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        /*try {*/
            if (req.getParameter("x") == null || req.getParameter("y") == null || req.getParameter("r") == null ||
                    req.getParameter("key") == null)
                req.getServletContext().getNamedDispatcher("Controller").forward(req, resp);
            else getServletContext().getNamedDispatcher("AreaChecker").forward(req, resp);
        /*} catch (NullPointerException e) {
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
        }*/
    }

    @Override
    public String getServletInfo() {
        return "ControllerServlet - определяет тип запроса, и, в зависимости от того, содержит ли запрос информацию " +
                "о координатах точки и радиусе, делегирует его обработку стартовой jsp-странице или AreaCheckServlet-у. " +
                "Все запросы внутри приложения должны передаваться этому сервлету, остальные сервлеты с веб-страниц " +
                "напрямую вызываться не должны.";
    }
}
