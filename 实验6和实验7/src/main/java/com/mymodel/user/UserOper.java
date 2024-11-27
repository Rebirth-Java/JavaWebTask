package com.mymodel.user;

import com.db.DBConn;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UserOper {
    public boolean login(User user) {
        try (Connection conn = DBConn.getConnection();
             PreparedStatement ps = conn.prepareStatement("SELECT * FROM login WHERE username=? AND password=?")) {
            ps.setString(1, user.getUserName());
            ps.setString(2, user.getPassword());

            ResultSet rs = ps.executeQuery();
            return rs.next(); // 如果有结果返回，则表示用户名和密码匹配
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(UserOper.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false; // 出现异常或没有匹配的记录时返回false
    }
}