/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shopping.data.dao;

import java.util.List;
import shopping.data.model.Category;

/**
 *
 * @author ndiep
 */
public interface CategoryDao {
    public List<Category> findAll();
    public boolean insert(Category category);
    public boolean update(Category category);
    public boolean delete(int id);
    public Category find(int id);

}
