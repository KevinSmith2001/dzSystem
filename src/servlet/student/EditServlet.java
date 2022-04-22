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
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/edit")
public class EditServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            //获取到报名登记表中各个字段传递过来的数据值
        HttpSession session=request.getSession();//session内置对象的初始化

            String sfzh = session.getAttribute("sfzh").toString();
        Regist regist = new RegistMapper().selectByIdNumber(sfzh);

        request.setCharacterEncoding("utf-8");
        String hightSchool=request.getParameter("hightSchool");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String parentPhone = request.getParameter("parentPhone");
        String headmasterPhone = request.getParameter("headmasterPhone");
        //把接受的数据进行设置储存封装，然后传递给数据库操作语句
        //Regist regist = new Regist();
        regist.setHightSchool(hightSchool);
        regist.setEmail(email);
        regist.setAddress(address);
        regist.setPhone(phone);
        regist.setParentPhone(parentPhone);
        regist.setHeadmasterPhone(headmasterPhone);

        regist.setUpdateName(sfzh);
        regist.setUpdateName(new DateUtil().getStringDate("yyyy-MM-dd:mm:ss"));
        //实现数据库报名信息的修改更新操作
        if (new RegistMapper().update(regist)){
            request.setAttribute("msg","更新成功！<a href='edit'>kan</a>");
            request.getRequestDispatcher("html/student/msg.jsp").forward(request,response);
        }else {
            request.setAttribute("msg","更新失败！");
            request.getRequestDispatcher("html/student/msg.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //把这个报名的学生基本信息查询到显示在登记表页面中---select
        //获取到登录成功后的身份信息（身份证号）
        HttpSession session=request.getSession();//session内置对象的初始化
        if (session.getAttribute("sfzh")!=null){
            String sfzh = session.getAttribute("sfzh").toString();
            //通过身份证号来查询数据表中这个考生的所有信息
            Regist regist = new RegistMapper().selectByIdNumber(sfzh);
            request.setAttribute("regist",regist);
            //把考生的所有信息传递并跳转到登记页面中

            List<Integer> majorIdlist= new ArrayList<>();//初始化专业id链表majorIdList
            List<Major>majorList = new ArrayList<>();//初始化专业链表majorList
            majorIdlist.add(regist.getFirstChoice());
            majorIdlist.add(regist.getSecondChoice());
            majorIdlist.add(regist.getThirdChoice());//获取到数据表中三个志愿的数据====对应的是数字1-5，添加到majorIdList
            for (int i = 0; i <majorIdlist.size() ; i++) {
                majorList.add(new MajorMapper().selectById(majorIdlist.get(i)));//通过id查询出对应的专业名称

            }
            request.setAttribute("majorList",majorList);

            request.getRequestDispatcher("/html/student/applicationDetails.jsp").forward(request,response);
        }
    }
}
