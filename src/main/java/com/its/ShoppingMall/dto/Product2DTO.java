package com.its.ShoppingMall.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.web.multipart.MultipartFile;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product2DTO {
    private Long p2_id;
    private String productName2;
    private int productPrice2;
    private int productStock2;
    private MultipartFile productFile2;
    private String productFileName2;



}
