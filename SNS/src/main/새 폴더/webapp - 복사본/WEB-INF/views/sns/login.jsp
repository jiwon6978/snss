<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>

    <link rel="stylesheet" href="<c:url value='/css/login.css'/>">

</head>

<body>

<div class="wrapper">
    <div class="imagebox">
        <img src="<c:url value='/css/메인이미지2.png'/>" alt="메인 이미지">
    </div>
    <div class="formbox">
        <div class="logobox"><img src="<c:url value='/css/로고2.png'/>" alt="로고"></div>

        <form action="<c:url value='/sns/login'/>" method="post">
            <div class="inputbox">
                <input type="text" name="phonenumber" placeholder="  전화번호">
                <input type="password" name="password" placeholder="  비밀번호">
                <button type="submit" class="go">로그인</button>
            </div>
        </form>

        <div class="divider"><span>또는</span></div>
        <div class="find-pw">
            <a href="<c:url value='/user/find-password'/>">비밀번호를 잊으셨나요?</a>
        </div>
        <div class="joinus">
            <span>계정이 없으신가요?</span>
            <a href="<c:url value='/user/join'/>">가입하기</a>
        </div>
        <div></div>
    </div>
</div>

<script>
    // 자바스크립트의 이벤트 리스너 함수 문법 오류 수정 및 로직 정리
    const btnEl = document.querySelector('.go');
    // 버튼이 <form> 내부에 있고 type="submit" 이므로, 별도의 클릭 이벤트가 필요 없을 수 있습니다.
    // 만약 클라이언트 측 유효성 검사가 필요하다면 여기에 로직을 추가합니다.
    /*
    btnEl.addEventListener('click', (e) => {
        // e.preventDefault(); // 폼 자동 제출 방지
        // alert('로그인 버튼 클릭됨');
    });
    */
</script>

</body>

</html>