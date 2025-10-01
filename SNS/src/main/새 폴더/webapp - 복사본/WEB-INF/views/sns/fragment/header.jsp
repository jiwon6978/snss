<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<header class="site-header">


    
    <nav class="navbar navbar-expand-md navbar-light bg-white border-bottom px-4">
        <div class="container-fluid"> <!-- 전체 폭 컨테이너 -->
            <a class="navbar-brand" href="<c:url value='/'/>"> <!-- 로고 링크 -->
                <img src="<c:url value='/img/logo.png'/>" alt="LOGO" /> <!-- 로고 이미지 -->
            </a>

            <!-- 모바일 메뉴 버튼 -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mainNavbar"
                    aria-controls="mainNavbar" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span> <!-- 버튼 아이콘 -->
            </button>

            <!-- 네비게이션 메뉴 -->
            <div class="collapse navbar-collapse justify-content-end" id="mainNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="#">고객센터</a>
                    </li>
                    <c:choose>
                    <%-- 로그인O --%>
                    <c:when test="${not empty sessionScope.loginUser}">
                    <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle d-flex align-items-center" href="#"
                    id="navProfile" role="button" data-bs-toggle="dropdown" aria-expended="false">
                    <%-- 프로필 이미지 + 닉네임 --%>
                    <img src="${sessionScope.loginUser.profileImageUrl}"
                            onerror="this.src='/img/default-avatar.png'"
                            class="rounded-circle" style="width:28px;height:28px;object-fit:cover;" alt="프로필"/>
                        <span class="ms-2">${sessionScope.loginUser.nickname}</span>
                        </a>
                        <ul class="dropdown-menu drop-menu-end" aria-labelledby="navProfile">
                        <li><a class="dropdown-item" href="<c:url value='/user/mypage'/>">마이페이지</a></li>
                         <li><hr class="dropdown-divider"></li>
                    <li>
                       <%-- 로그아웃은 GET보단 POST권장 --%>
                       <form action="<c:url value='user/logout'/>" method="post" class="px-3 m-0">
                       <button type="submit" class="dropdown-item p-0">로그아웃</button>
                       </form>
                    </li>
                </ul>
               </li>
              </c:when>
                <%-- 로그인X --%>
                <c:otherwise>
                 <li class="nav-item">
                 <a class="nav-link" href="<c:url value='/sns/login'/>">로그인</a>
                 </li>
                 <li class="nav-item">
                  <a class="nav-link" href="<c:url value='/sns/join'/>">회원가입</a>
                  </li>
                  <%-- 로그인X상태에서 마이페이지누르면 로그인으로 보내기 --%>
                  <li class="nav-item">
                    <a class="nav-link" href="<c:url value='/user/login?redirect=/sns/login'/>">마이페이지</a>
                  </li>
                 </c:otherwise>
                </c:choose>

                <li class="nav-item">
                    <a class="nav-link" href="<c:url value='/sns/notice-page'/>">공지사항</a>
                </li>
                </ul>
            </div>
        </div>
    </nav>
