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
import shopping.utils.Common;

/**
 *
 * @author Admin
 */
public class UserImpl implements UserDao{
    
    Connection conn = MySQLDriver.getConnection();
    @Override
    public User findUser(String emailphone, String password) {
        String sql;
        if(emailphone.contains("@"))sql="select * from users where email='"+emailphone+"' and password='"+Common.getMd5(password)+"'";
        else sql="select * from users where email='"+emailphone+"' and password='"+Common.getMd5(password)+"'";
        try {
            PreparedStatement sttm = conn.prepareStatement(sql);
            ResultSet rs = sttm.executeQuery();
            if(rs.next()) return new User(rs);
        } catch (SQLException ex) {
            Logger.getLogger(UserImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public User findUser(String emailphone) {
        String sql;
        if(emailphone.contains("@"))sql="select * from users where email='" + emailphone +"'";
        else sql="select * from users where email='" + emailphone +"'";
        try {
            PreparedStatement sttm = conn.prepareStatement(sql);
            ResultSet rs = sttm.executeQuery();
            if(rs.next()) return new User(rs);
        } catch (SQLException ex) {
            Logger.getLogger(UserImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public void insertUser(String name, String email, String phone, String password) {
        String sql = "insert into users(name, email, phone, password, role) values ('" +name +"','" +email+ "','" +phone+ "','" + password +"','')";
        try {
            PreparedStatement sttm = conn.prepareStatement(sql);
            sttm.execute();
        }catch(SQLException ex){
            ex.printStackTrace();
        }
    }
}
