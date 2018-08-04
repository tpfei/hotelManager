package com.tpf.dao.impl;
import java.sql.Connection;
import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
	public class DBUtils {
    private static String url = "jdbc:mysql://localhost:3306/hotelmanager";  //连接路径
    private static String user = "root"; //用户名
    private static String password = "tpf123456"; //密码
    public static Connection getConnection() {
        try {
            //创建Mysql数据源对象
            MysqlDataSource dataSource = new MysqlDataSource();
            //设置连接属性
            dataSource.setUrl(url);
            dataSource.setUser(user);
            dataSource.setPassword(password);
            //打开并返回连接
            return dataSource.getConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
