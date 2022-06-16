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
    public int save(Product1DTO product1DTO) {
         return Sql.insert("product1.save",product1DTO);
    }

    public List<Product1DTO> findAll() {
        return Sql.selectList("product1.findAll");

    }

    public  Product1DTO find(Long result) {
        return Sql.selectOne("product1.find");
    }

    public Product1DTO findById(Long id) {
        return Sql.selectOne("product1.findById",id);
    }
}
