<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>회원가입</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="css/signup.css">
<script>
	function checkForm() {
		let f = document.signUp

		if (f.id.value == '') {
			alert('아이디를 입력하세요')
			f.id.focus
			return false
		}
		if (f.password.value == '') {
			alert('비밀번호를 입력하세요')
			f.password.focus
			return false
		}
		if (f.name.value == '') {
			alert('이름을 입력하세요')
			f.name.focus
			return false
		}

		return true
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
					<h1>회원가입</h1>
				</div>
			</div>
		</div>
	</header>
	
	
	<div id="container">
		<div class="form-wrap">
			<h1>회원가입</h1>
			<form action="register.jsp" method="post" name="writeForm"
				onsubmit="return checkForm()">
				<div class="form-group">
					<label for="id">아이디</label> <input type="text" name="id" id="id"
						placeholder="아이디 입력">
				</div>

				<div class="form-group">
					<label for="password">비밀번호</label> <input type="password"
						name="password" id="password" placeholder="영문, 숫자 포함 8자리">
				</div>

				<div class="form-group">
					<label for="first-name">성명</label> <input type="text" name="name"
						id="name" placeholder="성명 입력">
				</div>

				<div class="form-group">
					<label for="tel1">전화번호</label> <input type="text" name="tel1"
						id="tel1" placeholder="010-0000-0000">
				</div>

				<div class="form-group">
					<label for="email">이메일</label> <input type="email" name="email_id"
						id="email" placeholder="hello@naver.com">
				</div>

				<div class="form-group">
					<label for="post">우편번호</label> <input type="text" name="post"
						id="post" placeholder="00000">
				</div>

				<div class="form-group">
					<label for="basicAddr">주소</label> <input type="text"
						name="basic_addr" id="basic_Addr" placeholder="서울특별시 중구 ">
				</div>

				<button type="submit" class="btn">가입하기</button>

				<p class="bottom-text">
					회원가입 시 <a href="#">이용약관</a>과 <a href="#">개인정보처리방침</a>에 동의
				</p>


			</form>
		</div>
		<footer>
			<p>
				이미 회원가입 했다면? <a href="#">로그인 하기</a>
			</p>
		</footer>
	</div>
	
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
</body>
</html>