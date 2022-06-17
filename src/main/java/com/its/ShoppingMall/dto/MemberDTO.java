package com.its.ShoppingMall.dto;



import lombok.Data;

import java.security.Timestamp;
@Data
public class MemberDTO {
    private Long m_id;
    private String memberId;
    private String memberPassword;
    private String memberEmail;
    private String memberName;
    private String memberPhone;
    private String memberAddress;
    private String memberBirth;
    private Timestamp memberCreatedDate;

}
