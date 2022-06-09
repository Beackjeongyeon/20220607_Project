package com.its.ShoppingMall.dto;

import lombok.Data;

@Data
public class BoardDTO {

    private Long id;
    private  String boardTitle;
    private  String boardWriter;
    private  String boardContents;
    private  String boardHits;
    private  String boardCreateDate;
    private  String boardFile;
    private  String boardFileName;

}
