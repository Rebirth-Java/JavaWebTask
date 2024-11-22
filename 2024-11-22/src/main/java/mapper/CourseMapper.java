package mapper;

import dao.BaseDao;
import dao.ICourse;
import entity.Course;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CourseMapper extends BaseDao implements ICourse {

    @Override
    public List<Course> findAll() {
        String sql = "select * from course";
        Object[] params = {};
        ResultSet resultSet = super.executeQuery(sql, params);
        List<Course> list = new ArrayList<>();
        try {
            while (resultSet.next()) {
                Course course = new Course();
                course.setCname(resultSet.getString("cname"));
                course.setChour(resultSet.getInt("chour"));
                course.setCcredit(resultSet.getInt("ccredit"));
                list.add(course);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }

    @Override
    public List<Course> getAllByName(String courseName) {
        String sql = "SELECT id,cno,cname,chour,ccredit,tno FROM course WHERE cmajor=?";
        Object[] params = {courseName};
        ResultSet resultSet = super.executeQuery(sql, params);
        List<Course> list = new ArrayList<>();

        try {
            while (resultSet.next()) {
                Course course = new Course();
                course.setId(resultSet.getInt("id"));
                course.setCno(resultSet.getString("cno"));
                course.setCname(resultSet.getString("cname"));
                course.setChour(resultSet.getInt("chour"));
                course.setCcredit(resultSet.getInt("ccredit"));
                course.setTno(resultSet.getString("tno"));
                list.add(course);
            }
        } catch (SQLException e) {
            throw new RuntimeException("数据库查询出错", e);
        } finally {
            return list;
        }
    }

    public Connection getconn() throws SQLException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        String url = "jdbc:mysql://localhost:3306/scms?useUnicode=true&characterEncoding=UTF-8";
        String user = "root";
        String password = "123456";
        return DriverManager.getConnection(url, user, password);
    }

    @Override
    public List<Course> getAllCourses() {
        String sql = "{ call c_count() }";
        CallableStatement callableStatement = null;
        ResultSet resultSet = null;
        List<Course> list = new ArrayList<>();

        try {
            Connection connection = getconn();
            callableStatement = connection.prepareCall(sql);
            resultSet = callableStatement.executeQuery();


            while (resultSet.next()) {
                 Course course = new Course();
                course.setCname(resultSet.getString("cmajor"));
                course.setChour(resultSet.getInt("sum(chour)"));
                course.setCcredit(resultSet.getInt("sum(ccredit)"));
                list.add(course);
            }
        } catch (SQLException e) {
            throw new RuntimeException("调用存储过程出错", e);
        } finally {
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (callableStatement != null) {
                    callableStatement.close();
                }
            } catch (SQLException e) {
                throw new RuntimeException("关闭资源出错", e);
            }
        }

        return list;
    }

    @Override
    public Course getAllCoursesByMajor(String major) {
         String sql = "{ call cc_count(?, ?, ?) }";
        CallableStatement callableStatement = null;
        Course course = new Course();

        try {
            Connection connection = getconn();
            callableStatement = connection.prepareCall(sql);

            // 设置输入参数
            callableStatement.setString(1, major);

            // 注册输出参数
            callableStatement.registerOutParameter(2, Types.INTEGER); // 输出参数 hours
            callableStatement.registerOutParameter(3, Types.INTEGER); // 输出参数 credits

            // 执行存储过程
            callableStatement.execute();

            // 获取输出参数的值
            int totalHours = callableStatement.getInt(2);
            int totalCredits = callableStatement.getInt(3);

            // 设置课程对象的属性
            course.setCmajor(major);
            course.setChour(totalHours);
            course.setCcredit(totalCredits);
        } catch (SQLException e) {
            throw new RuntimeException("调用存储过程出错", e);
        } finally {
            try {
                if (callableStatement != null) {
                    callableStatement.close();
                }
            } catch (SQLException e) {
                throw new RuntimeException("关闭资源出错", e);
            }
        }

        return course;
    }


    @Override
    public boolean insert(Course course) {
        String sql = "insert into course(cno,cname,cterm,cmajor,chour,ccredit,tno,cintro) values(?,?,?,?,?,?,?,?)";
        Object[] param = {course.getCno(), course.getCname(), course.getCterm(), course.getCmajor(), course.getChour(), course.getCcredit(), course.getTno(), course.getCintro()};
        int num = super.executeUpdate(sql, param);
        if (num > 0) {

            return true;
        } else {
            return false;
        }
    }


    @Override
    public boolean update(Course course) {
        String sql = "update course set chour=? , ccredit=? where cno=?";
        Object[] params = {course.getChour(), course.getCcredit(), course.getCno()};
        int number = super.executeUpdate(sql, params);
        if (number > 0) {
            return true;
        }
        return false;
    }

    @Override
    public boolean delete(String cno) {
        String sql = "delete from course where cno=?";
        Object[] params = {cno};
        int number = super.executeUpdate(sql, params);
        if (number > 0) {
            return true;
        }
        return false;
    }
}
