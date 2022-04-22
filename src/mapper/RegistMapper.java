package mapper;

import model.Regist;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RegistMapper {

    private Connection conn;
    private PreparedStatement pstmt;

    public RegistMapper() {
        conn = new conn.Conn().getConn();
    }

    //要实现登录的账号和密码是否在数据表中真实存在，如果存在用户合法，不存在需要注册
    public boolean valiUser(Regist regist) {
        try {
            pstmt = conn.prepareStatement("select * from  regist_t where identity_number=? and password=? and delsign=0");
            pstmt.setString(1, regist.getIdentityNumber());
            pstmt.setString(2, regist.getPassword());
            ResultSet rs = pstmt.executeQuery();//执行查询语句，结果返回
            if (rs.next()) {
                String test = rs.getString("name");
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;

    }

    //实现判断注册的考生身份信息是否在regist_t表中已经存在了，如果存在提示前端请勿重复，不存在可以插入
    public Regist selectByIdNumber(String identityNumber) {
        try {
            pstmt = conn.prepareStatement("select * from  regist_t where identity_number=? and delsign=0");
            pstmt.setString(1, identityNumber);
            ResultSet rs = pstmt.executeQuery();//执行查询语句，结果返回
            while (rs.next()) {
                Regist regist = new Regist();
                regist.setRegistId(rs.getInt("regist_id"));
               // regist.setExamineenNumber(rs.getInt("examinee_number"));
                regist.setIdentityNumber(rs.getString("identity_number"));
                regist.setPassword(rs.getString("password"));
                regist.setName(rs.getString("name"));
                regist.setSex(rs.getInt("sex"));
                regist.setPoliticalOutlook(rs.getInt("political_outlook"));
                regist.setHightSchool(rs.getString("high_school"));
                regist.setAddress(rs.getString("address"));
                regist.setPhone(rs.getString("phone"));
                regist.setParentPhone(rs.getString("parent_phone"));
                regist.setHeadmasterPhone(rs.getString("headmaster_phone"));
                regist.setEmail(rs.getString("email"));
                regist.setFirstChoice(rs.getInt("first_choice"));
                regist.setSecondChoice(rs.getInt("second_choice"));
                regist.setThirdChoice(rs.getInt("third_choice"));
                regist.setRemark(rs.getString("remark"));
                regist.setInputName(rs.getString("input_name"));
                regist.setInputDate(rs.getString("input_name"));
                regist.setUpdateDate(rs.getString("update_date"));
                regist.setUpdateName(rs.getString("update_name"));
                regist.setDelsign(rs.getInt("delsign"));

                return regist;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean insert(Regist regist) {
        try {
            pstmt = conn.prepareStatement("insert into regist_t(examinee_number,identity_number,password,name,sex,political_outlook,high_school,address,phone,parent_phone,headmaster_phone,email,first_choice," +
                    "second_choice,third_choice,remark,input_name,input_date,update_name,update_date)values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            pstmt.setLong(1, regist.getExamineenNumber());
            pstmt.setString(2, regist.getIdentityNumber());
            pstmt.setString(3, regist.getPassword());
            pstmt.setString(4, regist.getName());
            pstmt.setInt(5, regist.getSex());
            pstmt.setInt(6, regist.getPoliticalOutlook());
            pstmt.setString(7, regist.getHightSchool());
            pstmt.setString(8, regist.getAddress());
            pstmt.setString(9, regist.getPhone());
            pstmt.setString(10, regist.getParentPhone());
            pstmt.setString(11, regist.getHeadmasterPhone());
            pstmt.setString(12, regist.getEmail());
            pstmt.setInt(13, regist.getFirstChoice());
            pstmt.setInt(14, regist.getSecondChoice());
            pstmt.setInt(15, regist.getThirdChoice());
            pstmt.setString(16, regist.getRemark());
            pstmt.setString(17, regist.getInputName());
            pstmt.setString(18, regist.getInputDate());
            pstmt.setString(19, regist.getUpdateName());
            pstmt.setString(20, regist.getUpdateDate());
            int rs = pstmt.executeUpdate();
            if (rs == 1) {
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    public boolean update(Regist regist) {
        try {
            pstmt = conn.prepareStatement("update regist_t set high_school=?,address=?,phone=?,parent_phone=?,headmaster_phone=?,email=?,update_name=?,update_date=? where regist_id=? " );

            pstmt.setString(1, regist.getHightSchool());
            pstmt.setString(2, regist.getAddress());
            pstmt.setString(3, regist.getPhone());
            pstmt.setString(4, regist.getParentPhone());
            pstmt.setString(5, regist.getHeadmasterPhone());
            pstmt.setString(6, regist.getEmail());
            pstmt.setString(7, regist.getUpdateName());
            pstmt.setString(8, regist.getUpdateDate());
            pstmt.setInt(9,regist.getRegistId());
//            pstmt =conn.prepareStatement("update regist_t set examinee_number=?,identity_number=?,password=?,name=?,sex=?," +
//                    "political_outlook=?,high_school=?,address=?,phone=?,parent_phone=?,headmaster_phone=?,email=?,first_choice=?,second_choice=?," +
//                    "third_choice=?,remark=?,update_name=?,update_date=? where regist_id=?");
//            pstmt.setLong(1, regist.getExamineenNumber());
//            pstmt.setString(2, regist.getIdentityNumber());
//            pstmt.setString(3, regist.getPassword());
//            pstmt.setString(4, regist.getName());
//            pstmt.setInt(5, regist.getSex());
//            pstmt.setInt(6, regist.getPoliticalOutlook());
//            pstmt.setString(7, regist.getHightSchool());
//            pstmt.setString(8, regist.getAddress());
//            pstmt.setString(9, regist.getPhone());
//            pstmt.setString(10, regist.getParentPhone());
//            pstmt.setString(11, regist.getHeadmasterPhone());
//            pstmt.setString(12, regist.getEmail());
//            pstmt.setInt(13, regist.getFirstChoice());
//            pstmt.setInt(14, regist.getSecondChoice());
//            pstmt.setInt(15, regist.getThirdChoice());
//            pstmt.setString(16, regist.getRemark());
//            pstmt.setString(17, regist.getUpdateName());
//            pstmt.setString(18, regist.getUpdateDate());
//            pstmt.setInt(19,regist.getRegistId());
            int rs = pstmt.executeUpdate();
            if (rs == 1) {
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
