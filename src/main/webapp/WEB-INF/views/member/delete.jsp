<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-15
  Time: 오전 8:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../../../resources/css/bootstrap.min%20(2).css">
</head>
<body>
<div class="mt-4 container" style="width: 257px" >
    <form action="/member/delete1" method="get" name="memberdelete">
        <h2>회원탈퇴</h2><br>
        <h3>아이디</h3>
        <input type="text"  class="form-control" id="memberId" name="memberId" placeholder="아이디를 입력해주세요"><br>
        <h3>비밀번호</h3>
        <input type="password" class="form-control" id="exampleInputPassword" name="memberPassword" placeholder="8~14자리 숫자또는 문자 입력해주세요"><br>
        <button type="submit"  class="btn btn-primary">회원탈퇴</button><br>
    </form>
</div>
</body>
</html>
