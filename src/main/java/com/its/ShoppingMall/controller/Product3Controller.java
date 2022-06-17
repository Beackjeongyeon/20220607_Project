package com.its.ShoppingMall.controller;

import com.its.ShoppingMall.dto.Product3DTO;
import com.its.ShoppingMall.service.Product3Service;
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
public class Product3Controller {
    @Autowired
    private Product3Service product3Service;
    private Product3Controller product3Controller;


    @GetMapping("/product/cigarette1")
    public String liquid(Model model) {
        List<Product3DTO> product3DTOList = product3Service.findAll();
        model.addAttribute("productList3", product3DTOList);
        return "product/cigarette";
    }

    @GetMapping("/product3/save3")
    public String save() {
        return "/product/save";

    }
    @GetMapping("/product3/put3")
    public String put(@RequestParam("p3_id") Long p3_id, Model model){
       Product3DTO resultlist= product3Service.findById(p3_id);
       model.addAttribute("result",resultlist);
        System.out.println("Product2Controller.put");
        System.out.println(resultlist);
        return "/product/put";
    }

    @PostMapping("/product3/save")
    public String save(@ModelAttribute Product3DTO product3DTO) throws IOException {
        product3Service.save(product3DTO);
        product3Service.find(product3DTO.getP3_id());
        System.out.println("Product1Controller.save");
        System.out.println(product3DTO.getP3_id());
        return "redirect:/product1/put3?p1_id="+product3DTO.getP3_id();
    }

}


