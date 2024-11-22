package dao;

import entity.Course;

import java.util.List;

public interface ICourse {
    List<Course> findAll();
    List<Course> getAllByName(String courseName);
    List<Course> getAllCourses();
    Course getAllCoursesByMajor(String major);
    boolean insert(Course course);
    boolean update(Course course);
    boolean delete(String cno);
}
