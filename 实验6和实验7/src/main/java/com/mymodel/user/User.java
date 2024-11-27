package com.mymodel.user;

public class User {
    private String userName;
    private String password;

    // 构造函数
    public User() {}

    public User(String userName, String password) {
        this.userName = userName;
        this.password = password;
    }

    // Getter 和 Setter 方法
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}