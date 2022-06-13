package com.its.ShoppingMall.repository;

import com.its.ShoppingMall.dto.BoardDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardRepository {
    @Autowired
    private SqlSessionTemplate Sql;


    public int save(BoardDTO boardDTO) {
        return Sql.insert("board.save",boardDTO);

    }
}
