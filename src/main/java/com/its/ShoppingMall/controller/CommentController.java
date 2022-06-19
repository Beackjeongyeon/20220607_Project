package com.its.ShoppingMall.controller;

import com.its.ShoppingMall.dto.CommentDTO;
import com.its.ShoppingMall.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class CommentController {
    @Autowired
    private CommentService commentService;

    @GetMapping("/comment/save")
    public @ResponseBody List<CommentDTO> save(@ModelAttribute CommentDTO commentDTO, @RequestParam("boardId") Long id) {
        commentService.save(commentDTO);
        List<CommentDTO> commentDTOList = commentService.findByBoardId(id);
        return commentDTOList;
    }
}
