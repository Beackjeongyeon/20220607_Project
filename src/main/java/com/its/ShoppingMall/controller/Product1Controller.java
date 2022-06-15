package com.its.ShoppingMall.controller;

import com.its.ShoppingMall.dto.MemberDTO;
import com.its.ShoppingMall.dto.Product1DTO;
import com.its.ShoppingMall.service.Product1Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.io.IOException;
import java.util.List;

@Controller
public class Product1Controller {
    @Autowired
    private Product1Service product1Service;

    @GetMapping("/product/liquid1")
    public String liquid(Model model){
        List<Product1DTO> product1DTOList= product1Service.findAll();
        model.addAttribute("productList",product1DTOList);
        System.out.println("Product1Controller.liquid");
        System.out.println(product1DTOList);
        return "product/liquid";
    }
    @GetMapping("/product1/save1")
    public String save(){
        return "/product/save";

    }
    @PostMapping("/product1/save")
    public String save(@ModelAttribute Product1DTO product1DTO)throws IOException {
        product1Service.save(product1DTO);
        System.out.println("Product1Controller.save");
        System.out.println(product1DTO);
        return "/product/save";
        }
    }


