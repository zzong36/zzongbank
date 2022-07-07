<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="kr.ac.kopo.util.JDBCClose"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="kr.ac.kopo.util.ConnectionFactory"%>
<%@ page import="kr.ac.kopo.board.dao.BoardDAO"%>
<%@ page import="kr.ac.kopo.board.vo.BoardVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
BoardDAO dao = new BoardDAO();
List<BoardVO> list = dao.selectAll();

pageContext.setAttribute("list", list);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://kit.fontawesome.com/06461e5bbe.js"
	crossorigin="anonymous"></script>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<link rel="stylesheet" href="/ZzongBank/resources/css/style.css">
<title>고객센터</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$('#addBtn').click(function() {
			location.href = 'writeForm.jsp'
		})
	})

	function checkLogin(boardNo) {
		/* 백에서 날아오는 문자 웹에서 해석하나? 텍스트 형태로 날아가기 때문에 상관없음 */
		<c:choose>
		<c:when test="${empty userVO}">
		if (confirm('로그인 후 사용가능합니다 로그인 페이지로 이동할까요?')) {
			location.href = "/ZzongBank/jsp/login/login.jsp"
		}
		</c:when>
		<c:otherwise>
		location.href = 'detail.jsp?no=' + boardNo
		</c:otherwise>
		</c:choose>
	}
</script>
</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp" />
	</header>

	<!-- page header -->
	<header id="page-header">
		<div class="container">
			<div class="row">
				<div class="col-md-6 m-auto text-center py-5">
					<h1>고객센터</h1>
				</div>
			</div>
		</div>
	</header>

	<!-- Info Section -->
	<section id="info" class="py-3">
		<div class="container mb-3 mt-2">
			<div class="row">
				<div class="col-md-6 align-self-center">
					<h2 class="mb-3">
						문의(Q&A)
						</h3>
						<p class="mb-2">자주 하는 질문들의 모음 바로가기입니다</p>
						<p>찾으시는 정보가 없다면 아래 Q&A 게시판에 글을 남겨주세요</p>
						<a href="about.html" class="btn btn-outline-secondary">자주묻는질문
							바로가기</a>
				</div>
				<div class="col-md-6">
					<img src="img/laptop.png" alt="" class="img-fluid">
				</div>
			</div>
		</div>
	</section>

	<!-- Search -->
	<div class="container">
		<form class="d-flex justify-content-end" role="search">
			<input class="form-group mx-sm-2" type="search" placeholder="Search"
				aria-label="Search">
			<button class="btn btn-secondary" type="submit">검색</button>
		</form>
	</div>


	<!-- table -->
	<section id="posts">
		<div class="container mt-3">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header text-center">
							<h4>질문 게시판</h4>
						</div>
						<table class="table table-hover text-center">
							<thead class="thead-dark">
								<tr>
									<th width="7%">번호</th>
									<th>재목</th>
									<th width="16%">작성자</th>
									<th width="20%">등록일</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${ list }" var="board" varStatus="Loop">
									<tr>
										<td>${ board.no }</td>
										<td><a href="javascript:checkLogin(${board.no })"
											class="text-decoration-none text-secondary"> <c:out
													value="${ board.title }" />
										</a></td>
										<td>${ board.writer }</td>
										<td>${ board.regDate }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>

	<div class="container mb-4">
		<div class="d-flex justify-content-end">
			<c:if test="${ not empty userVO }">
				<button id="addBtn" class="btn btn-outline-secondary mt-3">글쓰기</button>
			</c:if>
		</div>
	</div>
	
	 <!-- PAGINATION CENTERED -->
        <nav>
            <ul class="pagination justify-content-center">
                <li class="page-item disabled">
                    <a class="page-link" href="#">Previous</a>
                </li>
                <li class="page-item active">
                    <a class="page-link" href="#">1</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#">2</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#">3</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#">Next</a>
                </li>
            </ul>
        </nav>

	<footer>
		<!-- 경로가 Mission_Web 이후부터 시작(xml, include, forward)의 경우 나머지는 localhost:9999/이후부터 시작하므로 절대경로는 /Mission_Web부터 시작  -->
		<%@ include file="/jsp/include/footer.jsp"%>
	</footer>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>
	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>
	<script>
		//configure slider
		$('.carousel').carousel({
			interval : 6000,
			pause : 'hover'
		});

		$(document).on('click', '[data-toggle="lightbox"]', function(event) {
			event.preventDefault();
			$(this).ekkoLightbox();
		});
	</script>
</body>
</html>