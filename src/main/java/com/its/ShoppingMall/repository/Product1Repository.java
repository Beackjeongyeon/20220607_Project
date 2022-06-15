package com.its.ShoppingMall.repository;

import com.its.ShoppingMall.dto.Product1DTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class Product1Repository {
    @Autowired
    private SqlSessionTemplate Sql;
    public void save(Product1DTO product1DTO) {
         Sql.insert("product1.save",product1DTO);
        System.out.println("Product1Repository.save");
        System.out.println(product1DTO);
    }

    public List<Product1DTO> findAll() {
        return Sql.selectList("product1.findAll");

    }
}
