package mapper;

import dao.BaseDao;
import dao.ICourse;
import entity.Course;

public class CourseMapper extends BaseDao implements ICourse {

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
