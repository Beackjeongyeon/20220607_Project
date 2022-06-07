package com.its.ShoppingMall.dto;



import lombok.Data;

import java.security.Timestamp;
@Data
public class MemberDTO {
    private String memberId;
    private String memberPassword;
    private String memberEmail;
    private String memberName;
    private String memberPhone;
    private String memberAge;
    private String memberAddress;
    private Timestamp memberCreatedDate;

}
