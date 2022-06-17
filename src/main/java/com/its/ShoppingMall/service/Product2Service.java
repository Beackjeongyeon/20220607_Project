package com.its.ShoppingMall.service;
import com.its.ShoppingMall.dto.Product2DTO;
import com.its.ShoppingMall.repository.Product2Repository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;

@Service
public class Product2Service {
    @Autowired
    private Product2Repository product2Repository;


    public int save(Product2DTO product2DTO) throws IOException {
        System.out.println(product2DTO);
        System.out.println("Product2Service.save");
        MultipartFile productFile2 = product2DTO.getProductFile2();
        String productFileName2 = productFile2.getOriginalFilename();
        productFileName2 = System.currentTimeMillis() + "-" + productFileName2;
        product2DTO.setProductFileName2(productFileName2); // 3.
        String savePath = "D:\\spring_img\\" + productFileName2; // 4.
        // 5.
        if (!productFile2.isEmpty()) {
            productFile2.transferTo(new File(savePath));
        }
        return product2Repository.save(product2DTO);
    }

    public List<Product2DTO> findAll() {
        return product2Repository.findAll();
    }

    public  Product2DTO find(Long result) {
        return product2Repository.find(result);
    }

    public Product2DTO findById(Long p2_id) {
        return product2Repository.findById(p2_id);

    }
}

