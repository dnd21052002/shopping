/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shopping.data.dao;

import shopping.data.model.User;

/**
 *
 * @author Admin
 */
public interface UserDao {
    public User findUser(String emailphone, String password);
    public User findUser(String emailphone);
    public void insertUser(String name, String email, String phone, String password);
}
