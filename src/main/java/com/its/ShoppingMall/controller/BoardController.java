package com.its.ShoppingMall.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BoardController {

    // 게시판
 @GetMapping("/board/pagingList1")
    public String pagingList(){

     return "/board/pagingList";
 }

    // 액상
 @GetMapping("/board/liquid1")
    public String liquid(){

     return "/board/liquid";
 }

    // 전자담배기기
 @GetMapping("/board/device1")
    public String device(){

     return "/board/device";
 }

    // 궐련형
 @GetMapping("/board/cigarette1")
    public String cigarette(){

     return "/board/cigarette";
 }



}
