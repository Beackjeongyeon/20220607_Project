<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-15
  Time: 오후 8:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <link rel="stylesheet" href="../../../resources/css/bootstrap.min%20(2).css">
    <title>Title</title>
    <!-- jQuery -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <!-- iamport.payment.js -->
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
</head>
<body>
<h1 style="margin-left: 150px">장바구니담기</h1>
<table class="table">
    <div class="container" style="margin-bottom: 50px">

        <tr>
            <th>상품명</th>
            <th>상품가격</th>
            <th>남은재고</th>
            <th>금액</th>
        </tr>
        <tr>
            <td>${result.productName1}</td>
            <td>${result.productPrice1}</td>
            <td>${result.productStock1}</td>
            <td>${result.productPrice1}</td>
            <td></td>

        </tr>
    </div>
</table>
<div class="row">
    <div class="col">

        <a href="/product/liquid1">상품취소</a>
        <a href="/product/pay">구매</a>


    </div>
</div>
<script>
    function requestPay() {
        var IMP = window.IMP;
        IMP.init('imp72624975');
        IMP.request_pay({
            pg: "kakaopay",
            pay_method: 'card',
            merchant_uid: 'merchant_' + new Date().getTime(),
            name: '결제',
            amount: '${result.productPrice1}',
            buyer_email: '구매자 이메일',
            buyer_name: '${sessionScope.loginMemberName}',
            buyer_tel: '구매자 번호',
            buyer_addr: '구매자 주소',
            buyer_postcode: '구매자 주소',
            m_redirect_url: 'redirect url'
        }, function (rsp) {
            if (rsp.success) {
                alert("예약이 완료 되었습니다")
                location.href = '/member/detail';
                saveForm.submit();

            } else {
                var msg = '결제에 실패하였습니다.';
                rsp.error_msg;
            }
        });
    }

</script>
</body>
</html>
