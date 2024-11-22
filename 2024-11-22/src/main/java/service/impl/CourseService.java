package service.impl;

import entity.Course;
import mapper.CourseMapper;
import service.ICourseService;

import java.util.List;

public class CourseService implements ICourseService {
    private final CourseMapper courseMapper = new CourseMapper();

    @Override
    public List<Course> findAll() {
     List <Course> list = courseMapper.findAll();
     return list;
    }

    @Override
    public boolean insert(Course course) {
        if (courseMapper.insert(course)){
            return true;
        }else {
            return false;
        }

    }



    @Override
    public boolean update(Course course) {
        if (courseMapper.update(course)){
            return true;
        }
        return false;
    }

    @Override
    public boolean delete(String cno) {
     if (courseMapper.delete(cno)){
         return true;
     }
        return false;
    }
}
