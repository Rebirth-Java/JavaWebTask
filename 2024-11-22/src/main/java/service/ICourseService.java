package service;

import entity.Course;

import java.util.List;

public interface ICourseService {
    List<Course> findAll();
    boolean insert(Course course);

    boolean update(Course course);
    boolean delete(String cno);
}
