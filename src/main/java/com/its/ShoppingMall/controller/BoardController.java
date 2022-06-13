package com.its.ShoppingMall.controller;

import com.its.ShoppingMall.dto.BoardDTO;
import com.its.ShoppingMall.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class BoardController {
    @Autowired
    private BoardService boardService;

    // 게시판
 @GetMapping("/board/pagingList1")
    public String pagingList(){

     return "/board/pagingList";
 }

    // 액상
 @GetMapping("/board/liquid1")
    public String liquid(){

     return "board/liquid/liquid";
 }

    // 전자담배기기
 @GetMapping("/board/device1")
    public String device(){

     return "board/device/device";
 }

    // 궐련형
 @GetMapping("/board/cigarette1")
    public String cigarette(){

     return "board/cigarette/cigarette";
 }
 @GetMapping  ("/board/best1")
    public String best(){
     return "board/best/best";
 }
 @GetMapping ("/board/save1")
    public String save1(){

     return "board/save";
 }
 @PostMapping("/board/save")
    public String save(@ModelAttribute BoardDTO boardDTO){
     boardService.save(boardDTO);
     return "/board/pagingList";
 }



}
