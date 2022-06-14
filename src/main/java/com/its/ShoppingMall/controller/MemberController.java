package com.its.ShoppingMall.controller;

import com.its.ShoppingMall.dto.BoardDTO;
import com.its.ShoppingMall.dto.MemberDTO;
import com.its.ShoppingMall.service.BoardService;
import com.its.ShoppingMall.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
public class MemberController {
    @Autowired
    private MemberService memberService;
    private BoardService boardService;

    @GetMapping ("/member/login")
    public String login(){

        return "/member/login";
    }
    @PostMapping ("/member/login1")
    public String login1(@ModelAttribute MemberDTO memberDTO, HttpSession session,Model model) {
        MemberDTO loginresult = memberService.login(memberDTO);
        if (loginresult != null) {
            String memberId = loginresult.getMemberId();
            Long id = loginresult.getId();
            session.setAttribute("memberId", memberId);
            session.setAttribute("Id", id);
            List<BoardDTO> boardDTOList = boardService.findAll();
            model.addAttribute("boardList", boardDTOList);
            return "redirect:/";
        } else {
            return "member/login";
        }
    }
    @GetMapping("/member/Signup")
    public String Signup(){

        return "/member/Signup";
    }
    @PostMapping("/member/Signup1")
    public String login(@ModelAttribute MemberDTO memberDTO){
        System.out.println(memberDTO);
         memberService.save(memberDTO);
         return "/member/login";

    }
    @GetMapping("/member/find")
    public String find(){
    return "/member/find";
    }
    @PostMapping ("/member/findId")
    public String findId(@RequestParam ("memberEmail")String memberEmail, Model model){
       String result=memberService.findId1(memberEmail);
        System.out.println(model);
        model.addAttribute("findid",result);
        return "/member/findId";
    }
    @PostMapping("/member/findPassword1")
    public String findpassword(@ModelAttribute MemberDTO memberDTO,Model model){
           String result = memberService.findpassword(memberDTO);
           model.addAttribute("findpassword",result);
        System.out.println(result);
           return"/member/findPassword";

    }


}

