package com.its.ShoppingMall.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.web.multipart.MultipartFile;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product1DTO {
    private Long id;
    private String productName1;
    private int productPrice1;
    private int productStock1;
    private MultipartFile productFile1;
    private String productFileName1;


}
