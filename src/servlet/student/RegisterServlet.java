package servlet.student;

import mapper.MajorMapper;
import mapper.RegistMapper;
import model.Major;
import model.Regist;
import util.DateUtil;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String identityNumber = request.getParameter("identityNumber");
        String password = request.getParameter("password");
        String name = request.getParameter("name");
        String sex = request.getParameter("sex");
        String politicalOutlook = request.getParameter("politicalOutlook");
        String highSchool = request.getParameter("hightSchool");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String parentPhone = request.getParameter("parentPhone");
        String headmasterPhone = request.getParameter("headmasterPhone");
        String firstChoice = request.getParameter("firstChoice");
        String secondChoice = request.getParameter("secondChoice");
        String thirdChoice = request.getParameter("thirdChoice");

        //获取到前端提交的数据之后，向数据库表中插入数据，在插入之前要先判断考生是否注册存在，不能重复注册
        if (new RegistMapper().selectByIdNumber(identityNumber)!=null){
            request.setAttribute("msg","请勿重复注册");
            request.getRequestDispatcher("html/student/msg.jsp").forward(request,response);
        }else {
            Regist regist=new Regist();
            regist.setIdentityNumber(identityNumber);
            regist.setPassword(password);
            regist.setName(name);
            regist.setSex(Integer.valueOf(sex));
            regist.setPoliticalOutlook(Integer.valueOf(politicalOutlook));
            regist.setHightSchool(highSchool);
            regist.setEmail(email);
            regist.setAddress(address);
            regist.setPhone(phone);
            regist.setParentPhone(parentPhone);
            regist.setHeadmasterPhone(headmasterPhone);
            regist.setFirstChoice(Integer.valueOf(firstChoice));
            regist.setSecondChoice(Integer.valueOf(secondChoice));
            regist.setThirdChoice(Integer.valueOf(thirdChoice));

            regist.setInputName(identityNumber);
            regist.setInputDate(new DateUtil().getStringDate("yyyy-MM-dd:mm:ss"));
            boolean isReg=new RegistMapper().insert(regist);
            if (isReg){
                HttpSession session = request.getSession();
                session.setAttribute("idNumber",identityNumber);
            }
            request.setAttribute("msg","注册成功！");
            request.getRequestDispatcher("html/student/msg.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Major> majorList = new MajorMapper().selectAll();
        request.setAttribute("majorList",majorList);
        //先查询出专业信息，在储存传递给前端的注册页面中，这样才能动态显示出专业的志愿名单
            request.getRequestDispatcher("/html/student/signUp.jsp").forward(request,response);
    }
}
