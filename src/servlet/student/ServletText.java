package servlet.student;

import mapper.NewsMapper;
import model.News;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/st")
public class ServletText extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<News> newsList = new NewsMapper().selectNews();
        request.setAttribute("newsList",newsList);
        request.getRequestDispatcher("/html/student/home.jsp").forward(request,response);
    }
}
