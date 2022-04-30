package mapper;

import model.Major;
import model.News;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NewsMapper {

    private Connection conn;
    private PreparedStatement pstmt;

    public NewsMapper() {
        conn = new conn.Conn().getConn();
    }
    public List<News> selectNews(){
        List<News> newsList = new ArrayList<>();
        try{
            pstmt = conn.prepareStatement("select*from new_t where delsign=0");
            ResultSet rs = pstmt.executeQuery();
            while(rs.next()) {
                News news = new News();
                news.setNewsId(rs.getInt("news_id"));
                news.setTitle(rs.getString("title"));
                news.setContent(rs.getString("content"));
                news.setNewsType(rs.getInt("news_type"));
                news.setPublishDate(rs.getString("publish_date"));
                news.setNewsStatus(rs.getInt("news_status"));
                news.setRemark(rs.getString("remark"));
                news.setInputName(rs.getString("input_name"));
                news.setInputDate(rs.getString("input_date"));
                news.setUpdateDate(rs.getString("update_name"));
                news.setUpdateName(rs.getString("update_name"));
                news.setDelsign(rs.getInt("delsign"));
                newsList.add(news);
            }
    }catch(SQLException e){
        e.printStackTrace();
    }
    return newsList;
    }
    public News selectById(int id){
        try{
            pstmt=conn.prepareStatement("select*from news_t where news_id=? and delsign=0 and news_status = 2");
            pstmt.setInt(1,id);
            ResultSet rs = pstmt.executeQuery();
            while(rs.next()){
                News news = new News();
                news.setNewsId(rs.getInt("news_id"));
                news.setTitle(rs.getString("title"));
                news.setContent(rs.getString("content"));
                news.setNewsType(rs.getInt("news_type"));
                news.setPublishDate(rs.getString("publish_date"));
                news.setNewsStatus(rs.getInt("news_status"));
                news.setRemark(rs.getString("remark"));
                news.setInputName(rs.getString("input_name"));
                news.setInputDate(rs.getString("input_date"));
                news.setUpdateDate(rs.getString("update_name"));
                news.setUpdateName(rs.getString("update_name"));
                news.setDelsign(rs.getInt("delsign"));
                return news;
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }
}