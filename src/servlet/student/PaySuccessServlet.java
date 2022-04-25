package servlet.student;

import mapper.PayMapper;
import mapper.RegistMapper;
import model.Pay;
import model.Regist;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/paySuccess")
public class PaySuccessServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String msg = request.getParameter("msg");
        if (msg != null && !msg.equals("")) {
            request.setAttribute("msg", msg);
            request.getRequestDispatcher("/html/student/msg.jsp").forward(request, response);
        } else if (session.getAttribute("sfzh")!=null) {
            String sfzh = session.getAttribute("sfzh").toString();
            Regist regist = new RegistMapper().selectByIdNumber(sfzh); //通过身份证号获取考生的全部信息进行存储
            Pay pay = new PayMapper().selectByRegistId(regist.getRegistId());
            request.setAttribute("pay",pay);
            request.getRequestDispatcher("/html/student/paymentSuccessful.jsp").forward(request,response);
        }else{
            response.sendRedirect("index");

        }
    }
}
