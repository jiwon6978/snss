<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="ko">
<head> <!-- 문서의 메타데이터 시작 -->
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" /> <!-- 모바일 반응형 설정 -->
    <link rel="stylesheet" href="/css/main.css">
    <title>BlahBlah</title>


    <!-- Bootstrap CSS 라이브러리 로드 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- 프로젝트 CSS (컨텍스트 루트 대응) -->
    <link rel="stylesheet" href="<c:url value='/css/main.css'/>">
</head>

<body>

<jsp:include page="/WEB-INF/views/sns/fragment/header.jsp" />


    <!-- 인포 텍스트 영역 -->
    <section>
        <div class="infotext">
            <div class="headinfo">
                <h5 class="cm" id="text1"></h5> <!-- 처음엔 비어있음 -->
            </div>
            <div class="maininfo">
                <h1 class="first" id="text2"></h1> <!-- 처음엔 비어있음 -->
                <h1 class="secon" id="text3"></h1> <!-- 처음엔 비어있음 -->
            </div>
        </div>
    </section>

    <!-- 슬라이드 및 버튼 -->
    <div class="slider-wrapper position-relative">
        <c:url var="joinUrl" value="/users/join" />
        <!-- 위 경로는 예시: 네 회원가입 매핑에 맞게 바꿔도 돼 -->

        <div class="fixed-login-button position-absolute top-50 start-50 translate-middle">
            <button class="login-button" onclick="location.href='${joinUrl}'">시작하기</button>
        </div>

        <!-- 부트스트랩 캐러셀 -->
        <div id="mainCarousel" class="carousel slide" data-bs-ride="carousel" data-bs-interval="5000">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="<c:url value='/img/슬라이드1.png'/>" class="d-block w-100" alt="슬라이드1">
                </div>
                <div class="carousel-item">
                    <img src="<c:url value='/img/슬라이드2.png'/>" class="d-block w-100" alt="슬라이드2">
                </div>
                <div class="carousel-item">
                    <img src="<c:url value='/img/슬라이드3.png'/>" class="d-block w-100" alt="슬라이드3">
                </div>
            </div>

            <!-- 이전 버튼 -->
            <button class="carousel-control-prev" type="button" data-bs-target="#mainCarousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            </button>
            <!-- 다음 버튼 -->
            <button class="carousel-control-next" type="button" data-bs-target="#mainCarousel" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
            </button>
        </div>
    </div>

    <!-- 기능 설명 섹션 -->
    <section class="container py-5 mb-5 mt-5">
        <div class="row text-center">
            <div class="col-md-3">
                <img src="<c:url value='/img/채팅 아이콘.png'/>" alt="채팅" width="80">
                <h5 class="mt-3">실시간 채팅</h5>
                <a><p>빠르고 안정적인 1:1, 그룹 채팅 지원</p></a>
            </div>
            <div class="col-md-3">
                <img src="<c:url value='/img/파일 전송.png'/>" alt="파일전송" width="80">
                <h5 class="mt-3">파일 전송</h5>
                <a><p>사진, 문서, 영상 파일 공유 지원</p></a>
            </div>
            <div class="col-md-3">
                <img src="<c:url value='/img/이모티콘.png'/>" alt="이모티콘" width="80">
                <h5 class="mt-3">감성 이모티콘</h5>
                <a><p>감정을 표현하는 다양한 이모티콘 제공</p></a>
            </div>
            <div class="col-md-3">
                <img src="<c:url value='/img/보안.png'/>" alt="보안" width="80">
                <h5 class="mt-3">강력한 보안</h5>
                <a><p>엔드투엔드 암호화로 안전한 대화</p></a>
            </div>
        </div>
    </section>

    <!-- 푸터 -->
    <footer>
        ⓒ 2025 BlahBlah.sns.message Project
    </footer>

    <!-- 부트스트랩 JS 라이브러리 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

    <script>
        document.addEventListener("DOMContentLoaded", () => {
            const texts = [
                "커뮤니케이션",
                "새로운 경험의 시작",
                "Work Talk Share"
            ];

            let currentText = 0; // 현재 출력 중인 문구 인덱스
            let charIndex = 0;    // 현재 문구에서 출력할 문자 위치

            const elements = [
                document.getElementById("text1"),
                document.getElementById("text2"),
                document.getElementById("text3")
            ];

            function typeWriter() {
                if (charIndex < texts[currentText].length) {
                    elements[currentText].classList.add("typing-cursor");
                    elements[currentText].textContent += texts[currentText].charAt(charIndex);
                    charIndex++;
                    setTimeout(typeWriter, 100); // 글자 하나 출력 후 0.1초 대기
                } else {
                    elements[currentText].classList.remove("typing-cursor");
                    currentText++;
                    charIndex = 0;
                    if (currentText < texts.length) {
                        setTimeout(typeWriter, 500); // 다음 문구 시작 전 잠깐 대기
                    }
                }
            }

            typeWriter();
        });
    </script>

    <!-- dropdown -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
