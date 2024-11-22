package dao;


import java.sql.*;

/**
 * 基础数据访问对象（DAO），提供数据库连接、执行SQL语句和关闭资源的方法。
 */
public class BaseDao {

    // 初始化连接对象，用于与数据库建立连接
    private Connection connection = null;

    // 预编译的 SQL 语句对象，可以用来执行参数化的 SQL 查询或更新
    private PreparedStatement preparedStatement = null;

    // 结果集对象，存储从数据库查询返回的数据
    private ResultSet resultSet = null;

    /**
     * 加载数据库驱动并建立连接。
     *
     * @return 如果成功建立连接，则返回 true；否则返回 false。
     */
    public boolean getConnection() {
        try {
            // 注册 JDBC 驱动
            Class.forName("com.mysql.jdbc.Driver");

            // 建立数据库连接
             String url = "jdbc:mysql://localhost:3306/scms?useUnicode=true&characterEncoding=UTF-8";
            String username = "root";
            String password = "123456";
            connection = DriverManager.getConnection(url, username, password);
            return true;
        } catch (SQLException e) {
            // 处理 SQL 异常
            e.printStackTrace();
            return false;
        } catch (ClassNotFoundException e) {
            // 处理找不到类的异常
            e.printStackTrace();
            return false;
        }
    }

    /**
     * 执行增删改操作。
     *
     * @param sql   要执行的 SQL 语句
     * @param param 参数数组，用于设置预编译 SQL 语句中的占位符
     * @return 受影响的行数，如果发生错误则返回 -1
     */
    public int executeUpdate(String sql, Object[] param) {
        int num = 0;
        try {
            if (getConnection()) {
                // 准备预编译的 SQL 语句
                preparedStatement = connection.prepareStatement(sql);

                // 设置参数
                if (param.length > 0) {
                    for (int i = 0; i < param.length; i++) {
                        preparedStatement.setObject((i + 1), param[i]);
                    }
                }

                // 执行更新操作
                num = preparedStatement.executeUpdate();
            }
        } catch (SQLException e) {
            // 处理 SQL 异常
            e.printStackTrace();
            return num = -1;
        } finally {
            // 关闭资源
            this.closeResources();
            return num;
        }
    }

    /**
     * 执行查询操作。
     *
     * @param sql   要执行的 SQL 语句
     * @param param 参数数组，用于设置预编译 SQL 语句中的占位符
     * @return 查询结果集
     */
    public ResultSet executeQuery(String sql, Object[] param) {
        try {
            if (getConnection()) {
                // 准备预编译的 SQL 语句
                preparedStatement = connection.prepareStatement(sql);

                // 设置参数
                if (param.length > 0) {
                    for (int i = 0; i < param.length; i++) {
                        preparedStatement.setObject((i + 1), param[i]);
                    }
                }

                // 执行查询操作
                resultSet = preparedStatement.executeQuery();
            }
        } catch (SQLException e) {
            // 处理 SQL 异常
            e.printStackTrace();
        } finally {
            // 返回结果集
            return resultSet;
        }
    }

    /**
     * 关闭所有打开的数据库资源。
     */
    public void closeResources() {
        if (preparedStatement != null) {
            try {
                // 关闭连接和预编译的 SQL 语句对象
                connection.close();
                preparedStatement.close();
            } catch (SQLException e) {
                // 抛出运行时异常
                throw new RuntimeException(e);
            }
        }
    }
}