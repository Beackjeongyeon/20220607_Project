<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-08
  Time: 오전 9:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="../../../resources/css/bootstrap.min%20(2).css">
    <title>헤더입니다.</title>

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">SmokeShop</a>
        <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor03" aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="navbar-collapse collapse" id="navbarColor03" style="">
            <ul class="navbar-nav me-auto">


                <%-- 홈으로 --%>
                <li class="nav-item">
                    <a class="nav-link active" href="#">Home
                        <span class="visually-hidden">(current)</span>
                    </a>
                </li>



                <%-- 로그인 --%>
                    <div name="memberlogin">
                <li class="nav-item">
                    <a class="nav-link" href="" onclick="memberlogin()">로그인</a>
                </li>
                    </div>


                    <%-- 회원가입 --%>

                <li class="nav-item">
                    <a class="nav-link" href="/member/Signup">회원가입</a>
                </li>





                    <%-- 회원정보 --%>
                <li class="nav-item">
                    <a class="nav-link" href="#">mypage</a>
                </li>

                    <%-- 목록 --%>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Dropdown</a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <a class="dropdown-item" href="#">Something else here</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Separated link</a>
                    </div>
                </li>
            </ul>
            <form class="d-flex">
                <input class="form-control me-sm-2" type="text" placeholder="Search">
                <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>


</body>
<script>
    function memberlogin() {
        // window.open("/member/login", "memberlogin", "width=400, height=800, top=50, left=50");
        var popupX = (document.body.offsetWidth / 2) - (200 / 2);
//&nbsp;만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

        var popupY= (window.screen.height / 2) - (300 / 2);
//&nbsp;만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음

        window.open('/member/login', 'memberlogin', 'status=no, height=600, width=500, left='+ popupX + ', top='+ 200);
    }
</script>
</html>
