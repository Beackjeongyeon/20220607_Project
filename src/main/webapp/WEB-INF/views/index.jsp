<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-08
  Time: 오전 9:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="../../resources/css/bootstrap.min%20(2).css">
    <title>시작페이지입니다.</title>
    <link rel="stylesheet" href="../../resources/css/styles.css">
</head>
<body>
<jsp:include page="layout/header.jsp" flush="false"></jsp:include>
<html>
<head>
    <style>
        #slider {
            width: 100%;
            height: 100%;

            margin: 0 auto;
            border: 10px solid transparent;
            padding: 0px;

            z-index: 100;
            overflow: hidden;
            white-space: nowrap;
            box-sizing: border-box;
        }
        #slider > li {
            width: 100%;
            height: 100%;

            position: relative;
            display: inline-block;
            overflow: hidden;
            font-size: 15px;
            font-size: initial;
            line-height: normal;
            transition: all 0.5s cubic-bezier(0.4, 1.3, 0.65, 1); /* Slide css animation */
            background-size: cover;
            vertical-align: top;
            box-sizing: border-box;
            white-space: normal;
        }
    </style>
</head>
<body>
<c:choose>
    <c:when test="${sessionScope.memberId !=null}">
<div class="container">
<ul id="slider">
    <li>
        <img src="../../resources/img/123456.JPG" >
    </li>
    <li>
        <img src="../../resources/img/23232323131.JPG">
    </li>
    <li>
        <img src="../../resources/img/323123123123123.JPG">
    </li>
</ul>
</div>
    </c:when>
    <c:otherwise>
        <br><br><br><div class="container">
        <img src="../../resources/img/2021123111513014321_1.jpg" style="margin-left:350px" ><br><br>
        <h1>위사이트는 청소년 유해매체물로서 정보통신망 이용촉진법 및 청소년 보호등에 관한 법률 및 청소년보호법 규정에 의하여 만18세 미만의 청소년은 사용할수 없습니다.</h1><br><br>
        </div><br><br>
    </c:otherwise>
</c:choose>

<script>
    // Slide every slideDelay seconds
    const slideDelay = 3000;

    const dynamicSlider = document.getElementById("slider");

    var curSlide = 0;
    window.setInterval(()=>{
        curSlide++;
        if (curSlide === dynamicSlider.childElementCount) {
            curSlide = 0;
        }

        // Actual slide
        dynamicSlider.firstElementChild.style.setProperty("margin-left", "-" + curSlide + "00%");
    }, slideDelay);

</script>
</body>
</html>

<footer class="py-5 bg-dark">
    <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2022</p></div>
</footer>
</body>
</html>
