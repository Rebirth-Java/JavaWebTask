package service;

import entity.Course;

public interface ICourseService {
    boolean insert(Course course);

    boolean update(Course course);
    boolean delete(String cno);
}
