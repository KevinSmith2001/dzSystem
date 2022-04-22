package mapper;

import model.Major;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MajorMapper  {
    private Connection conn;
    private PreparedStatement pstmt;

    public MajorMapper(){
        conn = new conn.Conn().getConn();
    }
    public Major selectById(int id){
        try {
            pstmt = conn.prepareStatement("select *from major_t where major_id=? and delsign=0");
            pstmt.setInt(1,id);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()){
                Major major = new Major();
                major.setMajorId(rs.getInt("major_id"));
                major.setMajorName(rs.getString("major_name"));
                major.setRegistNumber(rs.getInt("regist_number"));
                major.setTuition(rs.getInt("tuition"));
                major.setRemark(rs.getString("remark"));
                major.setInputName(rs.getString("input_name"));
                major.setInputDate(rs.getString("input_date"));
                major.setUpdateName(rs.getString("update_name"));
                major.setUpdateDate(rs.getString("update_date"));
                major.setDelsign(rs.getInt("delsign"));
                return major;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    //从数据库中major_t表中将所有专业查询出来
    public List<Major>selectAll(){
        List<Major> majorList = new ArrayList<>();
        try {
            pstmt = conn.prepareStatement("select * from  major_t where delsign=0");
            ResultSet rs = pstmt.executeQuery();//执行查询语句，结果返回
           while (rs.next()){
               //int majorId=(rs.getInt("major_id"));
               Major major = new Major();
               major.setMajorId(rs.getInt("major_id"));
               major.setMajorName(rs.getString("major_name"));
               major.setRegistNumber(rs.getInt("regist_number"));
               major.setTuition(rs.getInt("tuition"));
               major.setRemark(rs.getString("remark"));
               major.setInputName(rs.getString("input_name"));
               major.setInputDate(rs.getString("input_date"));
               major.setUpdateName(rs.getString("update_name"));
               major.setUpdateDate(rs.getString("update_date"));
               major.setDelsign(rs.getInt("delsign"));
               majorList.add(major);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return majorList;
    }

}
