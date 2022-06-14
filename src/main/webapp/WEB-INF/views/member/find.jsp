<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-08
  Time: 오후 4:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="../../../resources/css/bootstrap.min%20(2).css">
    <title>Title</title>
</head>
<body>
<div class="mt-4 container" style="width: 257px" >
    <form action="/member/findId" method="post">
        <h2>아이디찾기</h2><br>
        <h3>이메일입력</h3>
        <input type="email" class="form-control" id="memberEmail" name="memberEmail" placeholder="Enter email">
        <button type="submit" class="btn btn-primary">확인</button><br>
    </form>

    <form action="/member/findPassword1" method="post">
        <h2>비밀번호찾기</h2><br>
        <h3>아이디입력</h3>
        <input type="text"  class="form-control" id="memberId" name="memberId" placeholder="아이디를 입력해주세요"><br>
        <h3>전화번호입력</h3>
        <input type="text" class="form-control" id="memberPhone1" name="memberPhone" placeholder="전화번호를 입력해주세요"><br>
        <button type="submit" class="btn btn-primary">확인</button><br>
    </form>
</div>

</body>
</html>
