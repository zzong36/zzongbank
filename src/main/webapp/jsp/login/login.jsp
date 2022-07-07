<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>로그인</title>

<script>
	function checkForm() {

		let f = document.loginForm

		if (isNull(f.id, "아이디를 입력하세요") || isNull(f.password, "비밀번호를 입력하세요")) {
			return false
		}

		/* let f = document.loginForm
		if(f.id.value == ''){
			alert('아이디를 입력하세요')
			f.id.focus()
			return false
		}
		
		if(f.password.value == ''){
			alert('비밀번호를 입력하세요')
			f.password.focus()
			return false
		}
		return false; */
		return true
	}
</script>

</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp" />
	</header>

	<!-- Login -->
	<section id="login">
		<div class="container my-4 py-4">
			<div class="row">
				<div class="col-md-5 mx-auto">
					<div class="card">
						<div class="card-header text-center">
							<h4>로그인</h4>
						</div>
						<div class="card-body">
							<form action="loginProcess.jsp" method="post" onsubmit="return checkForm()" name="LoginForm">
								<div class="form-group mb-2">
									<label for="id">아이디</label> 
									<input type="text" class="form-control" name="id">
								</div>
								<div class="form-group mb-3">
									<label for="password">비밀번호</label> 
									<input type="text" class="form-control" name="password">
								</div>
								<div class="d-grid gap-2">
									<input type="submit" value="로그인" class="btn btn-success mt-2">
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<footer class="fixed-bottom">
		<%@ include file="/jsp/include/footer.jsp"%>
	</footer>


</body>
</html>