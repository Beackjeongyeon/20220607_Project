package com.its.ShoppingMall.controller;

import com.its.ShoppingMall.dto.Product1DTO;
import com.its.ShoppingMall.service.Product1Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.IOException;
import java.util.List;

@Controller
public class Product1Controller {
    @Autowired
    private Product1Service product1Service;
    private Product1Controller product1Controller;


    @GetMapping("/product/liquid1")
    public String liquid(Model model) {
        List<Product1DTO> product1DTOList = product1Service.findAll();
        model.addAttribute("productList", product1DTOList);
        return "product/liquid";
    }

    @GetMapping("/product1/save1")
    public String save() {
        return "/product/save";

    }
    @GetMapping("/product1/put1")
    public String put(@RequestParam("p1_id") Long p1_id, Model model){
       Product1DTO resultlist= product1Service.findById(p1_id);
       model.addAttribute("result",resultlist);
        System.out.println("Product1Controller.put");
        System.out.println(resultlist);
        return "/product/put";
    }

    @PostMapping("/product1/save")
    public String save(@ModelAttribute Product1DTO product1DTO) throws IOException {
        product1Service.save(product1DTO);
        product1Service.find(product1DTO.getP1_id());
        System.out.println("Product1Controller.save");
        System.out.println(product1DTO.getP1_id());
        return "redirect:/product1/put1?p1_id="+product1DTO.getP1_id();
    }

}


