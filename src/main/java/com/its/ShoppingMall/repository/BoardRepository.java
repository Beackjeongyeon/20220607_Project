package com.its.ShoppingMall.repository;

import com.its.ShoppingMall.dto.BoardDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class BoardRepository {
    @Autowired
    private SqlSessionTemplate Sql;


    public int save(BoardDTO boardDTO) {
        return Sql.insert("board.save",boardDTO);

    }

    public List<BoardDTO> findAll() {
        return Sql.selectList("board.findAll");
    }

    public List<BoardDTO> pagingList(Map<String, Integer> pagingParam) {
        return Sql.selectList("board.pagingList", pagingParam);
    }

    public int boardCount() {
        return Sql.selectOne("board.count");
    }

    public void updateHits(BoardDTO boardDTO) {
        Sql.update("board.updateHits",boardDTO);
    }

    public BoardDTO findById(BoardDTO boardDTO) {
        return Sql.selectOne("board.findById",boardDTO);
    }
}
