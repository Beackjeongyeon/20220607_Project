package com.its.ShoppingMall.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

    @GetMapping ("/member/login")
    public String login(){
        return "/member/login";
    }
    @GetMapping("/member/Signup")
    public String Signup(){
        return "/member/Signup";
    }
//    @PostMapping("/member/Signup1")
//    public String login(@ModelAttribute MemberDTO memberDTO){
//
//
//    }
}
