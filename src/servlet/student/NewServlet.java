package servlet.student;

import mapper.NewsMapper;
import model.News;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class NewServlet {
    @WebServlet("/news")
    public class  NewsServlet extends HttpServlet{
        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
            String newsId = request.getParameter("newsId"); //接收到前端传递过来的新闻编号
            if(newsId !=null && !newsId.equals("")){   //判断新闻编号是否为空
                try{
                    News news = new NewsMapper().selectById(Integer.valueOf(newsId));   //把新闻编号转换成整形进行查询详细的新闻信息
                    if(news != null){
                        request.setAttribute("news",news);
                    }else{
                        request.setAttribute("msg","查询不到该新闻id");
                        request.getRequestDispatcher("/html/student/msg.jsp").forward(request,response);
                    }
                }catch(Exception e){
                    request.setAttribute("msg","新闻id不能为空");
                    request.getRequestDispatcher("html/student/msg.jsp").forward(request,response);
                }request.getRequestDispatcher("html/student/applicationNotes.jsp").forward(request,response);
            }
        }
    }
}
