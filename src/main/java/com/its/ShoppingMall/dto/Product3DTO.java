package com.its.ShoppingMall.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.web.multipart.MultipartFile;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product3DTO {
    private Long p3_id;
    private String productName3;
    private int productPrice3;
    private int productStock3;
    private MultipartFile productFile3;
    private String productFileName3;



}
