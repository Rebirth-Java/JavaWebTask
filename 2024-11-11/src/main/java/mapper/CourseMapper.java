package mapper;

import dao.BaseDao;
import dao.ICourse;
import entity.Course;

public class CourseMapper extends BaseDao implements  ICourse {

    @Override
    public boolean insert(Course course) {
        String sql = "insert into course(cno,cname,cterm,cmajor,chour,ccredit,tno,cintro) values(?,?,?,?,?,?,?,?)";
        Object[] param = {course.getCno(),course.getCname(),course.getCterm(),course.getCmajor(),course.getChour(),course.getCcredit(),course.getTno(),course.getCintro()};
        int num = super.executeUpdate(sql,param);
       if (num > 0){

           return true;
       }else {
           return false;
       }
    }
}
