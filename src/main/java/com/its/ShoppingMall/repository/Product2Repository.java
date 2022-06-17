package com.its.ShoppingMall.repository;
import com.its.ShoppingMall.dto.Product2DTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class Product2Repository {
    @Autowired
    private SqlSessionTemplate Sql;
    public int save(Product2DTO product2DTO) {
         return Sql.insert("product2.save",product2DTO);
    }

    public List<Product2DTO> findAll() {
        return Sql.selectList("product2.findAll");

    }

    public  Product2DTO find(Long result) {
        return Sql.selectOne("product2.find");
    }

    public Product2DTO findById(Long p2_id) {
        return Sql.selectOne("product2.findById",p2_id);
    }
}
