package com.its.ShoppingMall.service;

import com.its.ShoppingMall.controller.Product1Controller;
import com.its.ShoppingMall.dto.Product1DTO;
import com.its.ShoppingMall.repository.Product1Repository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;

@Service
public class Product1Service {
    @Autowired
    private Product1Repository product1Repository;


    public int save(Product1DTO product1DTO) throws IOException {
        System.out.println(product1DTO);
        System.out.println("Product1Service.save");
        MultipartFile productFile1 = product1DTO.getProductFile1();
        String productFileName1 = productFile1.getOriginalFilename();
        productFileName1 = System.currentTimeMillis() + "-" + productFileName1;
        product1DTO.setProductFileName1(productFileName1); // 3.
        String savePath = "D:\\spring_img\\" + productFileName1; // 4.
        // 5.
        if (!productFile1.isEmpty()) {
            productFile1.transferTo(new File(savePath));
        }
        return product1Repository.save(product1DTO);
    }

    public List<Product1DTO> findAll() {
        return product1Repository.findAll();
    }

    public  Product1DTO find(Long result) {
        return product1Repository.find(result);
    }

    public Product1DTO findById(Long p1_id) {
        return product1Repository.findById(p1_id);

    }
}

