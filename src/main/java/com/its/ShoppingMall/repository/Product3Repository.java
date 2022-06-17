package com.its.ShoppingMall.repository;
import com.its.ShoppingMall.dto.Product3DTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class Product3Repository {
    @Autowired
    private SqlSessionTemplate Sql;
    public int save(Product3DTO product3DTO) {
         return Sql.insert("product3.save",product3DTO);
    }

    public List<Product3DTO> findAll() {
        return Sql.selectList("product3.findAll");

    }

    public  Product3DTO find(Long result) {
        return Sql.selectOne("product3.find");
    }

    public Product3DTO findById(Long p3_id) {
        return Sql.selectOne("product3.findById",p3_id);
    }
}
