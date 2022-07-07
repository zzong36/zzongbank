<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="navbar navbar-expand-sm navbar-light bg-light py-4">
	<div class="container-fluid">
		<a class="navbar-brand" href="/ZzongBank/index.jsp">Zzong Bank</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="#">계좌이체</a></li>
				<li class="nav-item"><a class="nav-link" href="#">계좌조회</a></li>
				<li class="nav-item"><a class="nav-link" href="#">비대면계좌개설</a></li>
				<li class="nav-item"><a class="nav-link"
					href="/ZzongBank/jsp/board/qna.jsp">고객센터</a></li>
			</ul>

			<ul class="navbar-nav ml-auto">
				<c:choose>
					<c:when test="${empty userVO}">
						<li class="nav-item"><a class="nav-link"
							href="/ZzongBank/jsp/login/login.jsp"> <i
								class="fa-solid fa-user"></i> 로그인
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/ZzongBank/jsp/member/signUp.jsp"> 회원가입 </a></li>
					</c:when>
					<c:otherwise>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-bs-toggle="dropdown" aria-expanded="false">
								<c:if test="${ not empty userVO }">
							${ userVO.name }님
							</c:if> 마이페이지
						</a>
							<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
								<li><a class="dropdown-item" href="profile.html"><i
										class="fas fa-user-circle"></i> Profile </a></li>
								<li><a class="dropdown-item" href="settings.html"> <i
										class="fas fa-cog"></i> Settings
								</a></li>
							</ul></li>

						<li class="nav-item"><a class="nav-link"
							href="/ZzongBank/jsp/login/logout.jsp"> <i
								class="fas fa-user-times"></i> 로그아웃
						</a></li>
					</c:otherwise>
				</c:choose>
				<li class="nav-item border"><a class="nav-link" href="#">Lang</a>
				</li>
			</ul>
		</div>
	</div>
</nav>