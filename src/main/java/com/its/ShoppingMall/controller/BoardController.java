package com.its.ShoppingMall.controller;

import com.its.ShoppingMall.dto.BoardDTO;
import com.its.ShoppingMall.dto.PageDTO;
import com.its.ShoppingMall.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class BoardController {
    @Autowired
    private BoardService boardService;

    // 게시판
 @GetMapping("/board/pagingList1")
    public String pagingList(Model model){
      List<BoardDTO> boardDTOList= boardService.findAll();
      model.addAttribute("boardList",boardDTOList);

      return "/board/pagingList";
 }


    // 전자담배기기
 @GetMapping("/board/device1")
    public String device(){

     return "product/device";
 }

    // 궐련형
 @GetMapping("/board/cigarette1")
    public String cigarette(){

     return "product/cigarette";
 }
 @GetMapping  ("/board/best1")
    public String best(){
     return "product/best";
 }
 @GetMapping ("/board/save1")
    public String save1(){

     return "/board/save";
 }
 @PostMapping("/board/save")
    public String save(@ModelAttribute BoardDTO boardDTO){
     boardService.save(boardDTO);
     return "redirect:/board/pagingList1";
 }
    @GetMapping("/board/paging")
    public String paging(@RequestParam(value="page", required=false, defaultValue="1") int page,
                         Model model) {
        List<BoardDTO> boardList = boardService.pagingList(page);
        PageDTO paging = boardService.paging(page);
        model.addAttribute("boardList", boardList);
        model.addAttribute("paging", paging);
        return "board/pagingList";
    }
    @GetMapping("/board/detail")
    public String findById(@ModelAttribute BoardDTO boardDTO ,Model model){
        BoardDTO board= boardService.findById(boardDTO);
        return "board/detail";
    }


}
