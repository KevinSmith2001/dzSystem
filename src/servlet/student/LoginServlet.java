package servlet.student;

import jdk.internal.org.objectweb.asm.Handle;
import mapper.RegistMapper;
import model.Regist;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int isUser = Integer.valueOf(request.getParameter("isUser"));
        String sfzh = request.getParameter("sfzh");
        String password = request.getParameter("password");
        boolean isLogin = false;

        if (isUser==1){
           Regist regist = new Regist();//数据在运输传递，通过数据模型层
           regist.setIdentityNumber(sfzh);//set储存  get获取
           regist.setPassword(password);
           isLogin = new RegistMapper().valiUser(regist);
        }
        if (isLogin){         //把最终的结果返回响应给前端页面
            HttpSession session = request.getSession();
            session.setAttribute("sfzh",sfzh);
            response.getWriter().write("true");
        }else{
            response.getWriter().write("false");
        }
    }


}
