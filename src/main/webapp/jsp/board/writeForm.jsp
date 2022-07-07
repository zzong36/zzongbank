<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="kr.ac.kopo.login.vo.LoginVO"%>
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
<title>글 작성</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script>
	$(document).ready(function() {
		$('#listBtn').click(function() {
			location.href = 'qna.jsp'
		})
	})

	function checkForm() {
		let f = document.writeForm

		if (f.title.value == '') {
			alert('enter title')
			f.title.focus
			return false
		}
		/* if (f.writer.value == '') {
			alert('enter writer')
			f.writer.focus
			return false
		} */
		if (f.content.value == '') {
			alert('enter content')
			f.content.focus
			return false
		}

		// 첨부파일 확장자 체크
		if (checkExt(f.attachfile1))
			return false
		if (checkExt(f.attachfile2))
			return false

		return true
	}

	function checkExt(obj) {
		let forbidName = [ 'exe', 'java', 'class', 'js', 'jsp' ]
		let fileName = obj.value
		let ext = fileName.substring(fileName.lastIndexOf('.') + 1)

		for (let i = 0; i < forbidName.length; i++) {
			if (forbidName[i] == ext) {
				alert('[ ' + ext + ' ] 확장자는 파일 업로드 할 수 없습니다')
				return true
			}
		}
		return false
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
					<h1>글 작성</h1>
				</div>
			</div>
		</div>
	</header>

	<section id="posts">
		<div class="container py-5 mb-5">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header text-center">
							<h4>글 작성하기</h4>
						</div>
						<form action="write.jsp" method="post" name="writeForm"
							onsubmit="return checkForm()" enctype="multipart/form-data">
							<table class="table table-bordered text-center">
								<tr>
									<th width="25%">제목</th>
									<td><input type="text" name="title" class="form-control"></td>
								</tr>
								<tr>
									<th width="25%">작성자</th>
									<%-- <td><input type="text" name="writer" style="width: 80%" value="${ userVO.id }" readonly></td> --%>
									<td>${ userVO.name }<input type="hidden" name="writer"
										value="${ userVO.name}"></td>
								</tr>
								<tr>
									<th width="25%">내용</th>
									<td><textarea rows="5" cols="80" name="content"
											class="form-control"></textarea></td>
								</tr>
								<tr>
									<th>첨부파일</th>
									<td><input type="file" name="attachfile1"><br>
										<input type="file" name="attachfile2"></td>
								</tr>
							</table>
							<div class="d-flex justify-content-center">
								<input type="submit" value="등 록" class="btn btn-outline-secondary mx-2">
								<button type="button" id="listBtn" class="btn btn-outline-secondary">목
									록</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>

	<footer>
		<%@ include file="/jsp/include/footer.jsp"%>
	</footer>
</body>
</html>