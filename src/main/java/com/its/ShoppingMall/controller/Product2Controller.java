package com.its.ShoppingMall.controller;

import com.its.ShoppingMall.dto.Product2DTO;
import com.its.ShoppingMall.service.Product2Service;
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
public class Product2Controller {
    @Autowired
    private Product2Service product2Service;
    private Product2Controller product2Controller;


    @GetMapping("product/device1")
    public String liquid(Model model) {
        List<Product2DTO> product2DTOList = product2Service.findAll();
        model.addAttribute("productList1", product2DTOList);
        return "product/device";
    }

    @GetMapping("/product2/save1")
    public String save() {
        return "/product/save2";

    }
    @GetMapping("/product2/put1")
    public String put(@RequestParam("p2_id") Long p2_id, Model model){
       Product2DTO resultlist= product2Service.findById(p2_id);
       model.addAttribute("result",resultlist);
        System.out.println("Product2Controller.put");
        System.out.println(resultlist);
        return "/product/put2";
    }

    @PostMapping("/product2/save")
    public String save(@ModelAttribute Product2DTO product2DTO) throws IOException {
        product2Service.save(product2DTO);
        product2Service.find(product2DTO.getP2_id());
        System.out.println("Product1Controller.save");
        System.out.println(product2DTO.getP2_id());
        return "redirect:/product2/put2?p2_id="+product2DTO.getP2_id();
    }

}


