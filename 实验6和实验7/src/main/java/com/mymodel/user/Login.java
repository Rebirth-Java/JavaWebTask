package com.mymodel.user;

public class Login {
    private String userName;
    private String password;

    // 构造函数
    public Login() {}

    public Login(String userName, String password) {
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

    // 检查用户名和密码的方法
    public boolean check() {
        if ("lantian".equals(userName) && "123456".equals(password)) {
            return true; // 登录成功
        } else {
            return false; // 登录失败
        }
    }
}