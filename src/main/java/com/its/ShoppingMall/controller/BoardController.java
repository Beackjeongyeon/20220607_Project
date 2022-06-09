package com.its.ShoppingMall.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BoardController {
 @GetMapping("/board/pagingList1")
    public String pagingList(){

     return "/board/pagingList";
 }



}
