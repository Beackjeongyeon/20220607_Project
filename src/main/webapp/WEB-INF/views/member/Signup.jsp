<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-08
  Time: 오전 10:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원가입 페이지 입니다.</title>
    <link rel="stylesheet" href="../../../resources/css/bootstrap.min%20(2).css">
    <style>
        /*.main {*/
        /*    text-align: center;*/
        /*    width: 257px*/
        /*}*/
    </style>
</head>
<body>
<div class="container" style="width: 257px">
<form action="/member/Signup1" method="post">

    <div class="main">
        <h2>회원가입</h2><br>

        <div class="form-group ">
            <h3>아이디</h3>
            <input type="text" class="form-control" id="memberId" name="memberId" placeholder="아이디를 입력해주세요">
        </div>

        <br>

        <div class="form-group">
            <h3>비밀번호</h3>
            <input type="password" class="form-control" id="exampleInputPassword" name="memberPassword" placeholder="8~14자리 숫자또는 문자 입력해주세요">
        </div>
        <br>

        <form action="/member/passwordCheck" method="get">
            <div class="form-group">

                <input type="text" class="form-control" id="passwordCheck" name="memberPassword" placeholder="비밀번호를 다시입력해주세요">
            </div>
        </form>
        <br><br>

        <div class="form-group">
            <h3>이메일</h3>
            <input type="email" class="form-control" id="memberEmail" name="memberEmail" placeholder="Enter email">
        </div>
        <br>

        <div class="form-group">
            <h3>이름</h3>
            <input type="text" class="form-control" id="memberName" name="memberName" placeholder="이름을 입력해주세요">
        </div>
        <br>

        <div class="form-group">
            <h3>연락처</h3>
            <input type="text" class="form-control" id="memberPhone" name="memberPhone" placeholder="연락처를 입력해주세요">
        </div>
        <br>

        <div class="form-group">
            <h3>생년월일</h3>
            <input type="date" id="memberBirth" name="memberBirth"><br><br>
            <span style="color: red"> ※저희사이트는 만19세 미만은 사용할수없습니다.</span>
        </div>
        <br>

        <h3>주소</h3><br>
        <form class="row g-6">
            <div class="container">
                <h4>우편주소입력</h4>
                <input type="text" id="sample6_postcode" name="memberAddress" placeholder="우편번호">
                <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
            </div>

        </form>
        <form class="row g-6">
            <div class="col-md-8">
                <h4>주소</h4>
                <input type="text" id="sample6_address" style="width:257px" placeholder="주소">
            </div>

        </form>
        <form class="row g-6">
            <div class="col-md-9">
                <h4>상세주소</h4>
                <input type="text" id="sample6_detailAddress" style="width:257px" placeholder="상세주소">
            </div>

        </form>
        <form class="row g-6">
            <div class="col-md-10">
                <h4>참고항목</h4>
                <input type="text" id="sample6_extraAddress" style="width:257px " placeholder="참고항목">
            </div>
            <br><br><br><br><br><br>
            <button type="submit" class="btn btn-primary">제출하기</button>
        </form>
    </div>


</form>
</div>

</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function (data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if (data.userSelectedType === 'R') {
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if (data.buildingName !== '' && data.apartment === 'Y') {
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if (extraAddr !== '') {
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;

                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }

    function pwcheck() {
        const pw1 = document.getElementById("pw1").value;
        const pw2 = document.getElementById("pw2").value;
        const checkResult = document.getElementById("id-check");
        if (pw1 == pw2) {
            checkResult.innerHTML = "일치합니다.";
            checkResult.style.color = "green";
        } else {
            checkResult.innerHTML = "일치하지 않습니다."
            checkResult.style.color = "red";

        }
        // value 속성은  input 태그만 가능하다.
    }

    function id1Check() {
        const id = document.getElementById("id").value;
        const exp = /^(?=.*[a-z])[a-z\d]{8,20}$/;
        const checkResult = document.getElementById("id-check");
        if (id.match(exp)) {
            checkResult.innerHTML = "사용가능합니다.";
            checkResult.style.color = "green";
        } else {
            checkResult.innerHTML = "영문소문자 및 숫자포함 8~20자입력해주세요";
            checkResult.style.color = "red";

        }

    }


</script>
</html>
