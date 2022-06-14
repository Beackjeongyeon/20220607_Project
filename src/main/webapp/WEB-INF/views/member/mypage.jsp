<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-14
  Time: 오후 3:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="../../../resources/css/bootstrap.min%20(2).css">
    <jsp:include page="../layout/header.jsp" flush="false"></jsp:include><br><br><br>
    <title>Title</title>
</head>
<body>
    <div class="container">
<table class="table">
<tr>
    <th>회원번호</th>
    <th>아이디</th>
    <th>비밀번호</th>
    <th>이메일주소</th>
    <th>이름</th>
    <th>연락처</th>
    <th>우편번호</th>
    <th>생년월일<th>
    <th>계정생성일</th>
</tr>
    <tr>
                <td>${result.id}</td>
                <td>${result.memberId}</td>
                <td>${result.memberPassword}</td>
                <td>${result.memberEmail}</td>
                <td>${result.memberName}</td>
                <td>${result.memberPhone}</td>
                <td>${result.memberAddress}</td>
                <td>${result.memberBirth}</td>
                <td>${result.memberCreatedDate}</td>
    </tr>

</table>
    </div>

</body>
</html>
