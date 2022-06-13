package com.its.ShoppingMall.service;

import com.its.ShoppingMall.dto.BoardDTO;
import com.its.ShoppingMall.repository.BoardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardService {
    @Autowired
    private BoardRepository boardRepository;
    public boolean save(BoardDTO boardDTO) {
         int result =  boardRepository.save(boardDTO);
        System.out.println(result);
         if(result >0){
             return true;
         }else{
             return false;
         }

    }
}
