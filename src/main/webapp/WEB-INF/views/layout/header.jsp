<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="/">SmokeShop</a>
        <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor03" aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="navbar-collapse collapse" id="navbarColor03" style="">
            <ul class="navbar-nav me-auto">


                    <%-- 로그인&로그아웃 --%>
                    <c:choose>
                        <c:when test="${sessionScope.memberId ==null}">
                            <li class="nav-item">
                                <a class="nav-link " href="" onclick="memberlogin()">로그인</a>
                            </li>

                    <div name="memberSignup">
                <li class="nav-item">
                    <a class="nav-link" href="" onclick="memberSignup()">회원가입</a>
                </li>
                    </div>
                        </c:when>
                        <c:otherwise>
                            <li class="nav-item">
                                <a class="nav-link " href="/member/logout" >로그아웃</a>
                            </li>
                        </c:otherwise>
                    </c:choose>


                        <c:if test="${sessionScope.memberId eq 'admin'}">
                            <li class="nav-item">
                                <a class="nav-link " href="/member/admin1" >관리자페이지</a>
                            </li><br>
                        </c:if>


                    <%-- 회원정보 --%>
                        <c:choose>
                            <c:when test="${sessionScope.memberId !=null}">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">회원정보</a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="/board/mypage1">Mypage</a>
                            <a class="dropdown-item" href="/member/delete1">회원탈퇴</a>
                            <a class="dropdown-item" href="/board/device1">장바구니</a>
                            <a class="dropdown-item" href="/board/cigarette1">구매내역</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="/board/best1">Best</a>
                        </div>
                    </li>

                    <%-- 목록 --%>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">목록창</a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="/board/paging">게시판</a>
                            <a class="dropdown-item" href="/product/liquid1">액상</a>
                            <a class="dropdown-item" href="/product/device1">전자담배</a>
                            <a class="dropdown-item" href="/product/cigarette1">궐련형</a>
                            <div class="dropdown-divider"></div>
                        </div>
                    </li>
            </ul>
            <form class="d-flex">
                <input class="form-control me-sm-2" type="text" placeholder="Search">
                <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
            </form>
            </c:when>
            <c:otherwise>
                <li class="nav-item">
                    <a class="nav-link " href="/member/nonmember" >비회원주문조회</a>
                </li><br>
            </c:otherwise>

            </c:choose>
        </div>
    </div>
</nav>


</body>
<script>
    function memberlogin() {

        var popupX = (document.body.offsetWidth / 2) - (200 / 2);
        var popupY= (window.screen.height / 2) - (300 / 2);
        window.open('/member/login', 'memberlogin', 'status=no, height=600, width=500, left='+ popupX + ', top='+ 200);
    }
    function memberSignup() {
        var popupX = (document.body.offsetWidth / 2) - (200 / 2);
        var popupY = (window.screen.height / 2) - (300 / 2);
        window.open('/member/Signup', 'memberSignup', 'status=no, height=600, width=500, left=' + popupX + ', top=' + 200);
    }
</script>
</html>
