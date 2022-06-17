package com.its.ShoppingMall.service;

import com.its.ShoppingMall.dto.Product1DTO;
import com.its.ShoppingMall.dto.Product3DTO;
import com.its.ShoppingMall.repository.Product1Repository;
import com.its.ShoppingMall.repository.Product3Repository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;

@Service
public class Product3Service {
    @Autowired
    private Product3Repository product3Repository;


    public int save(Product3DTO product3DTO) throws IOException {
        System.out.println(product3DTO);
        System.out.println("Product3Service.save");
        MultipartFile productFile3 = product3DTO.getProductFile3();
        String productFileName3 = productFile3.getOriginalFilename();
        productFileName3 = System.currentTimeMillis() + "-" + productFileName3;
        product3DTO.setProductFileName3(productFileName3); // 3.
        String savePath = "D:\\spring_img\\" + productFileName3; // 4.
        // 5.
        if (!productFile3.isEmpty()) {
            productFile3.transferTo(new File(savePath));
        }
        return product3Repository.save(product3DTO);
    }

    public List<Product3DTO> findAll() {
        return product3Repository.findAll();
    }

    public  Product3DTO find(Long result) {
        return product3Repository.find(result);
    }

    public Product3DTO findById(Long p3_id) {
        return product3Repository.findById(p3_id);

    }
}

