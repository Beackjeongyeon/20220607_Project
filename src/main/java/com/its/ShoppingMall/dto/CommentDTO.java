package com.its.ShoppingMall.dto;

import lombok.Data;

@Data
public class CommentDTO {
    private Long id;
    private Long boardId;
    private String commentContents;
    private String commentWriter;
    private String commentCreatedDate;
}
