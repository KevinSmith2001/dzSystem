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
@WebServlet("/pay")
public class PayServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //衔接前端付款页面提交过来的信息，查询一下这个考生在之前是否缴费，如果没缴费，插入数据库
        HttpSession session = request.getSession();
        String sfzh = session.getAttribute("sfzh").toString();
        Regist regist = new RegistMapper().selectByIdNumber(sfzh); //通过身份证号获取考生的全部信息进行存储
        Pay pay = new PayMapper().selectByRegistId(regist.getRegistId());
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        if(session.getAttribute("idNumber")!=null){
            request.getRequestDispatcher("/html/student/weChatPayment.jsp").forward(request,response);
        } else {
            response.sendRedirect("index");
        }
        }

}
