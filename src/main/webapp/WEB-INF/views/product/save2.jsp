<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-15
  Time: 오후 2:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>상품등록페이지입니다.</title>
</head>
<body>

<h2>상품등록</h2><br>

<div class="container ">
    <form action="/product2/save" method="post"  enctype="multipart/form-data">
        <h3>상품이름</h3>
        <input type="text" class="form-control" id="productName2" name="productName2" placeholder="상품이름을 입력해주세요"><br>

        <h3>상품가격</h3>
        <input type="text" class="form-control" id="productPrice2" name="productPrice2" placeholder="상품가격을 입력해주세요"><br>
        <h3>재고</h3>
        <input type="text" name="productStock2" placeholder="재고를 입력해주세요">
        <h3>상품사진등록</h3>
        <input type="File" class="form-control"  name="productFile2">
        <input type="submit" value="등록하기">
    </form>
</div><br>
</body>
</html>
