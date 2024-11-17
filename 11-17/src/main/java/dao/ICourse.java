package dao;

import entity.Course;

public interface ICourse {
    boolean insert(Course course);
    boolean update(Course course);
    boolean delete(String cno);
}
