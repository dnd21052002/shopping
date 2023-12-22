/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shopping.data.web;

import java.util.List;
import shopping.data.dao.Database;
import shopping.data.model.Product;

/**
 *
 * @author Admin
 */
public class ProductData {
        public List<Product> getAllProduct(){
        List<Product> listProduct = Database.getProductDao().findAll();
        return listProduct;
    }
}
