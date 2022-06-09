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
    <form action="/member/findId" method="get">
        <h2>아이디찾기</h2><br>
        <h3>이름입력</h3>
        <input type="text"  class="form-control" id="memberName" name="memberName" placeholder="이름을 입력해주세요"><br>
        <h3>전화번호입력</h3>
        <input type="text" class="form-control" id="memberPhone" name="memberPhone" placeholder="전화번호를 입력해주세요"><br>
        <button type="submit" class="btn btn-primary">확인</button><br>
    </form>

    <form action="/member/findPassword" method="get">
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
