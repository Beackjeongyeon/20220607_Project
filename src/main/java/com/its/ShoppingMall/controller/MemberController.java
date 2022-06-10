package com.its.ShoppingMall.controller;

import com.its.ShoppingMall.dto.MemberDTO;
import com.its.ShoppingMall.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;


@Controller
public class MemberController {
    @Autowired
    private MemberService memberService;

    @GetMapping ("/member/login")
    public String login(){

        return "/member/login";
    }
    @PostMapping ("/member/login1")
    public String login1(@ModelAttribute MemberDTO memberDTO, HttpSession session){
           memberService.login(memberDTO);
               return "redirect:/";

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
    @ResponseBody public String findId(@RequestParam ("memberEmail")String memberEmail, Model model){
        MemberDTO result=memberService.findId1(memberEmail);
        System.out.println(result);
        model.addAttribute("find",result);
        return "/member/findresult";
    }


}

