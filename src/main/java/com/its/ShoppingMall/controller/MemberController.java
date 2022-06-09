package com.its.ShoppingMall.controller;

import com.its.ShoppingMall.dto.MemberDTO;
import com.its.ShoppingMall.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpSession;


@Controller
public class MemberController {
    @Autowired
    private MemberService memberService;

    @GetMapping ("/member/login")
    public String login(){

        return "/member/login";
    }
    @GetMapping("/member/login1")
    public String login1(@ModelAttribute MemberDTO memberDTO, HttpSession session){
           memberService.login(memberDTO);
               return "/index";

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
    @GetMapping("/member/findId")
    public String findId(@ModelAttribute MemberDTO memberDTO, Model model){
        memberService.findId(memberDTO);
        System.out.println(memberDTO);
        return"/member/find";
    }


}

