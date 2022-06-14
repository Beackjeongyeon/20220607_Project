<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-13
  Time: 오후 4:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="../layout/header.jsp" flush="false"></jsp:include><br><br><br>
</head>
<body>
  <td>
    <th>글번호</th>
    <th>글제목</th>
    <th>내용</th>
    <th>조회수</th>
    <th>글작성일</th>
    <th>사진</th>
  </td>

    <td>
        <tr>${board.id}</tr>
        <tr>${board.boardTitle}</tr>
        <tr>${board.boardContents}</tr>
        <tr>${board.boardHits}</tr>
        <tr>${board.boardCreateDate}</tr>
        <tr>${board.boardFile}</tr>

    </td>

</body>
</html>
