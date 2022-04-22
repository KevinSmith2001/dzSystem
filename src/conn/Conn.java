package conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conn {
    public Connection getConn() {
        try {
            //解析jdbc驱动
            Class.forName("com.mysql.jdbc.Driver");
            //定义数据库地址
            String url = "jdbc:mysql://localhost:3306/danzhao?useUnicode=true&characterEncoding=utf-8";
            String user = "root";
            String password = "12345678";
            //与数据库 进行连接，连接成功返回成功对象
            Connection conn = DriverManager.getConnection(url, user, password);
            //将连接对象返回
            return conn;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
