package com.its.ShoppingMall.dto;

import lombok.Data;

@Data
public class CustomerDTO {
    private Long id;
    private String memberid;
    private String memberName;
    private int ProductStock1;
    private int ProductStock2;
    private int ProductStock3;
    private int ProductPrice;

}
