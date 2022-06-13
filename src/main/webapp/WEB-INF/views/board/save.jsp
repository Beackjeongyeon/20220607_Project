<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-13
  Time: 오후 1:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet "href="../../../resources/css/bootstrap.min%20(2).css">
    <title>Title</title>
</head>
<body>
<div class="container ">
    <form action="/board/save" method="post">
    <h3>글제목</h3>
    <input type="text" class="form-control" id="boardTitle" name="boardTitle" style="width: 300px" placeholder="아이디를 입력해주세요" width="300px">

        <h3>작성자</h3>
        <input type="text" class="form-control" id="boardWriter" name="boardWriter" style="width: 300px" placeholder="작성자를 입력해주세요" width="300px">

    <h3>글내용</h3>
    <textarea class="form-control" id="boardContents" name="boardContents" rows="3" style="width: 300px" placeholder="글내용을입력해주세요"></textarea>

    <label for="boardFile" class="form-label mt-4">파일첨부</label>
    <input class="form-control" type="file" id="boardFile" name="boardFile" style="width: 300px"><br><br><br>

        <button type="submit" class="btn btn-primary">제출하기</button>
    </form>
</div>
</body>
</html>
