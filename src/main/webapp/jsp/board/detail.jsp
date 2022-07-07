<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="kr.ac.kopo.board.dao.BoardDAO"%>
<%@ page import="kr.ac.kopo.board.vo.*"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%
int no = Integer.parseInt(request.getParameter("no"));

BoardDAO dao = new BoardDAO();
BoardVO board = dao.selectByNo(no);

List<BoardFileVO> fileList = dao.selectFileByNo(no);

pageContext.setAttribute("board", board);
pageContext.setAttribute("fileList", fileList);
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
<title>세부 게시글</title>
<script>
	function doAction(type) {
		switch (type) {
		case 'U':
			location.href = "update.jsp?no=${param.no}"
			break;
		case 'D':
			if (confirm('삭제하시겠습니까?')) {
				location.href = "delete.jsp?no=${param.no}"
			}
			break;
		case 'L':
			location.href = "list.jsp"
			break;
		}
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
					<h1>게시판 상세 조회</h1>
				</div>
			</div>
		</div>
	</header>

	<!-- 게시판 -->
	<section id="posts">
		<div class="container mt-5 mb-3">
			<div class="row">
				<div class="col-md-12 text-center">
					<div class="card">
						<table class="table table-striped">
							<tr>
								<th width="25%">번호</th>
								<td><c:out value="${ board.no }" /></td>
							</tr>
							<tr>
								<th width="25%">제목</th>
								<td>${ board.title }</td>
							</tr>
							<tr>
								<th width="25%">작성자</th>
								<td>${ board.writer }</td>
							</tr>
							<tr>
								<th width="25%">내용</th>
								<td>${ board.content }</td>
							</tr>
							<tr>
								<th width="25%">조회수</th>
								<td>${ board.viewCnt }</td>
							</tr>
							<tr>
								<th width="25%">등록일</th>
								<td>${ board.regDate }</td>
							</tr>
							<tr>
								<th>첨부파일</th>
								<td><c:forEach items="${ fileList }" var="fileVO">
										<a href="/ZzongBank/upload/${ fileVO.fileSaveName }">${ fileVO.fileOriName}</a> (${ fileVO.fileSize }bytes)
					</c:forEach></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="d-flex justify-content-center">
				<div class="btn-group" role="group"
					aria-label="Basic outlined example">
					<button type="button" onclick="doAction('U')"
						class="btn btn-outline-secondary">수정</button>
					<button type="button" onclick="doAction('D')"
						class="btn btn-outline-secondary">삭제</button>
					<button type="button" onclick="doAction('L')"
						class="btn btn-outline-secondary">목록</button>
				</div>
			</div>
		</div>
	</section>




	<footer class="fixed-bottom">
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
</body>
</html>