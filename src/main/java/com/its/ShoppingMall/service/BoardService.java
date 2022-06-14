package com.its.ShoppingMall.service;

import com.its.ShoppingMall.dto.BoardDTO;
import com.its.ShoppingMall.dto.PageDTO;
import com.its.ShoppingMall.repository.BoardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

    public List<BoardDTO> findAll() {

        return boardRepository.findAll();
    }

    private static final int PAGE_LIMIT = 5; // 한 페이지에 보여줄 글 갯수
    private static final int BLOCK_LIMIT = 3;

    /**
     *  요청한 페이지에 해당하는 글 목록을 DB에서 가져오는 역할
     */
    public List<BoardDTO> pagingList(int page) {
        // 1페이지 요청 =>
        int pagingStart = (page-1) * PAGE_LIMIT;
        Map<String, Integer> pagingParam = new HashMap<>();
        pagingParam.put("start", pagingStart);
        pagingParam.put("limit", PAGE_LIMIT);
        List<BoardDTO> pagingList = boardRepository.pagingList(pagingParam);
        return pagingList;
    }

    public PageDTO paging(int page) {
        int boardCount = boardRepository.boardCount(); // 글 갯수 조회
        // 필요한 전체 페이지 갯수
        // 10, 3  10/3 = 3.3333 =>4
        int maxPage = (int)(Math.ceil((double)boardCount / PAGE_LIMIT));
        // 시작페이지 1 4 7 10 ~~~
        int startPage = (((int)(Math.ceil((double)page / BLOCK_LIMIT))) - 1) * BLOCK_LIMIT + 1;
        // 끝페이지 3 6 9 12 ~~~
        int endPage = startPage + BLOCK_LIMIT - 1;
        if(endPage > maxPage)
            endPage = maxPage;

        PageDTO paging = new PageDTO();
        paging.setPage(page);
        paging.setStartPage(startPage);
        paging.setEndPage(endPage);
        paging.setMaxPage(maxPage);
        return paging;
    }

    public BoardDTO findById(BoardDTO boardDTO) {
        // 1. 조회수 증가, 2. 상세정보 가져오기
        boardRepository.updateHits(boardDTO);
        return boardRepository.findById(boardDTO);
    }
}
