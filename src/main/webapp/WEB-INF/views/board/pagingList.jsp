<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-09
  Time: 오후 6:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <jsp:include page="../layout/header.jsp" flush="false"></jsp:include>
    <title>게시판입니다.</title>
</head>
<body>

<div name="pagesave">
<button type="button"  onclick="pagesave()" class="btn btn-primary btn-lg">글작성하기</button>
</div>

</body>
<script>
    function pagesave() {

        var popupX = (document.body.offsetWidth / 2) - (200 / 2);
        var popupY= (window.screen.height / 2) - (300 / 2);
        window.open('/board/save1', 'boardsave', 'status=no, height=600, width=500, left='+ popupX + ', top='+ 200);
    }
</script>
</html>
