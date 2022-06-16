<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
            crossorigin="anonymous"></script>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>액상</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico"/>
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet"/>
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="../../../resources/css/styles.css" rel="stylesheet"/>
    <link rel="stylesheet" href="../../../resources/css/bootstrap.min%20(2).css">

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
<jsp:include page="../layout/header.jsp" flush="false"></jsp:include>


<div class="container">
    <ul id="slider">
        <li>
            <img src="../../../resources/img/123456.JPG">
        </li>
        <li>
            <img src="../../../resources/img/23232323131.JPG">
        </li>
        <li>
            <img src="../../../resources/img/323123123123123.JPG">
        </li>
    </ul>
</div>
</header>
<!-- Section-->

<div class="bg-dark py-5" style=margin-bottom:100px>
    <c:choose>
    <c:when test="${sessionScope.memberId != 'admin'}">
    <div class="container px-4 px-lg-5 my-5">
        <div class="text-center text-white">
            <h1 class="display-4 fw-bolder">액상</h1>
            <p class="lead fw-normal text-white-50 mb-0">지나친 흡연은 몸에 해롭습니다.</p>
        </div>
    </div>
</div>
</c:when>
<c:otherwise>
    <div class="container">
        <button type="submit" class="btn btn-success"><a href="/product1/save1">상품등록</a></button>
    </div>
</c:otherwise>
</c:choose>
<div class="col mb-5">
    <c:forEach items="${productList}" var="productList">
    <div class="card h-100">
        <div class="row">
            <div class="col">
                <div class="container">
                    <img src="${pageContext.request.contextPath}/upload/${productList.productFileName1}" alt=""
                         height="400"
                         width="350" style="margin-left: 285px">
                </div>
            </div>

            <div class="container" style="text-align:center; margin-left: 600px">
                <div class="col">
                    <table>
                        <div class="container" style="margin-left: 500px">
                            <tr>
                                <th><h3>1.상품명:${productList.productName1}</h3></th>
                            </tr>
                            <tr>
                                <td><h3>2.가격:${productList.productPrice1}&nbsp;원</h3></td>
                            </tr>
                            <tr>
                                <td><h3>3.재고:${productList.productStock1}&nbsp;개</h3></td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="/product1/put1?id=${productList.id}" class="btn btn-success">장바구니에담기</a>
                                </td>
                            </tr>
                        </div>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

</div>
<br>
<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">



</div>
</div>
</form>
</c:forEach>
</div>
<!-- Footer-->
<footer class="py-5 bg-dark">
    <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2022</p></div>
</footer>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
<script>
    const slideDelay = 3000;

    const dynamicSlider = document.getElementById("slider");

    var curSlide = 0;
    window.setInterval(() => {
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