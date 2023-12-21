/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shopping.data.driver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import shopping.utils.Constants;

/**
 *
 * @author ndiep
 */
public class MySQLDriver {
    public static Connection getConnection(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try {
                return DriverManager.getConnection(Constants.DB_URL, Constants.USER, Constants.PASS);
            }catch(SQLException ex){
                Logger.getLogger(MySQLDriver.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        }catch(ClassNotFoundException ex){
            Logger.getLogger(MySQLDriver.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
        
    }
}
