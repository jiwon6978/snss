<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
     <link href="<c:url value='/css/join.css/'/>" rel="stylesheet">
</head>

<body>
    <div class="container">
        <div class="logo">Blah Blah</div>
        <div class="desc">.</div>
        <button class="btn-google">Google로 로그인</button>
        <div class="divider"><span>또는</span></div>
        <form action="/sns/join" method="post">
            <input name ="phonenumber" type="text" placeholder="휴대폰 번호" required>
            <input name="password" minlength="8" type="password" placeholder="비밀번호" required>
            <input name="username" type="text" placeholder="사용자 이름" required>
            <input name="email" type="text" placeholder="[선택] Email (계정 분실 시 본인확인용)">
            <div class="policy">
                저희 서비스를 이용하는 사람이 회원님의 연락처 정보를 BlahBlah에 업로드했을 수도 있습니다. 더 <a href="#">알아보기</a>
            </div>
            <button type="submit" class="submit-btn">가입</button>
        </form>
        <div class="divider"></div>
        <button class="login-btn2" >이미 계정이 있으신가요?</button>

</body>
</html>
