package entity;

import lombok.Data;

@Data
public class Course {
    private String cno; // 课程编号
    private String cname; // 课程名称
    private int cterm; // 学期
    private String cmajor; // 专业
    private int chour; // 学时
    private int ccredit; // 学分
    private String tno; // 教师编号

    public Course() {
    }

    public Course(String cno, int chour, int ccredit) {
        this.cno = cno;
        this.chour = chour;
        this.ccredit = ccredit;
    }

    private String cintro; // 课程简介

}
