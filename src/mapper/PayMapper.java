package mapper;

import model.Pay;
import model.Regist;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PayMapper {
   private PreparedStatement pstmt;
   private Connection conn;
   public PayMapper(){
       conn = new conn.Conn().getConn();
   }
    public Pay selectByRegistId(int registId) {
        try {
            pstmt = conn.prepareStatement("select * from  pay_t where regist_id=? and delsign=0");
            pstmt.setInt(1, registId);
            ResultSet rs = pstmt.executeQuery();//执行查询语句，结果返回
            while (rs.next()) {
                Pay pay = new Pay();
                pay.setRegistId(rs.getInt("regist_id"));
                pay.setPayType(rs.getInt("pay_type"));
                pay.setPrice(rs.getDouble("price"));
                pay.setRemark(rs.getString("remark"));
                pay.setInputName(rs.getString("input_name"));
                pay.setInputDate(rs.getString("input_date"));
                pay.setUpdateName(rs.getString("update_name"));
                pay.setUpdateDate(rs.getString("update_date"));
                pay.setDelsign(rs.getInt("delsign"));
                return pay;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
   }
}