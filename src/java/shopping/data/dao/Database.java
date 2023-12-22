/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shopping.data.dao;

import shopping.data.impl.CategoryImpl;
import shopping.data.impl.ProductImpl;
import shopping.data.impl.UserImpl;

/**
 *
 * @author ndiep
 */
public class Database {
    public static CategoryDao getCategoryDao(){
        return new CategoryImpl();
    }
    
    public static ProductDao getProductDao(){
        return new ProductImpl();
    }
    
    public static UserDao getUserDao(){
        return new UserImpl();
    }
}
