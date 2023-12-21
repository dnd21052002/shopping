/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shopping.data.web;

import java.util.List;
import shopping.data.dao.Database;
import shopping.data.model.Category;

/**
 *
 * @author ndiep
 */
public class HeaderData {
    public List<Category> getAllCate(){
        List<Category> listCategory = Database.getCategoryDao().findAll();
        return listCategory;
    }
}
