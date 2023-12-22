/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shopping.data.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import shopping.data.dao.UserDao;
import shopping.data.driver.MySQLDriver;
import shopping.data.model.User;

/**
 *
 * @author Admin
 */
public class UserImpl implements UserDao{
    
    Connection conn = MySQLDriver.getConnection();
    @Override
    public User findUser(String emailphone, String password) {
        String sql;
        if(emailphone.contains("@"))sql="select * from users where email='"+emailphone+"' and password='"+password+"'";
        else sql="select * from users where email='"+emailphone+"' and password='"+password+"'";
        try {
            PreparedStatement sttm = conn.prepareStatement(sql);
            ResultSet rs = sttm.executeQuery();
            if(rs.next()) return new User(rs);
        } catch (SQLException ex) {
            Logger.getLogger(UserImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
