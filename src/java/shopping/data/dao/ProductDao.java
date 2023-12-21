/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shopping.data.dao;

import java.util.List;
import shopping.data.model.Product;

/**
 *
 * @author ndiep
 */
public interface ProductDao {
    public List<Product> findAll();
    public boolean insert(Product product);
    public boolean update(Product product);
    public boolean delete(int id);
    public Product find(int id);
}
