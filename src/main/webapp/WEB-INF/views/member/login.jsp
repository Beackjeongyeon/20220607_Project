<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-08
  Time: 오전 10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그인 페이지입니다.</title>
    <link rel="stylesheet" href="../../../resources/css/bootstrap.min%20(2).css">
    <style>
        *{
            background-image:url(/resources/img/20200728181348_217835.gif);
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;

        }
        .input-group{
            text-align: center;

        }

    </style>
</head>
<body>


<%--<div class="main">--%>
<div class="input-group" >
<legend>로그인</legend><br>
<div class="form-group row">
    <label for="memberId" class="col-sm-2 col-form-label">아이디</label>&nbsp;&nbsp;&nbsp;
    <input type="text"  class="form-control-plaintext" id="memberId" name="memberId" placeholder="아이디를 입력해주세요">
</div>

<br>

<div class="form-group">
    <label for="exampleInputPassword" class="form-label mt-4">비밀번호</label>
    <input type="password" class="form-control" id="exampleInputPassword" name="memberPassword" placeholder="8~14자리 숫자또는 문자 입력해주세요">
</div><br>

        <button type="submit" class="btn btn-primary">로그인</button><br>

    <a class="nav-link" href="/member/find">아이디/비밀번호 찾기</a>

</div>
<%--<div class="background-img">--%>
<%--&lt;%&ndash;<img src="../../resources/img/20200728181348_217835.gif">&ndash;%&gt;--%>
<%--</div>--%>
<%--</div>--%>

</body>
</html>