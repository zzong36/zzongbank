<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="kr.ac.kopo.login.vo.LoginVO"%>
<%@ page import="kr.ac.kopo.login.dao.LoginDAO"%>
<%
request.setCharacterEncoding("utf-8");

String id = request.getParameter("id");
String password = request.getParameter("password");

LoginVO loginVO = new LoginVO();
loginVO.setId(id);
loginVO.setPassword(password);

LoginDAO dao = new LoginDAO();
LoginVO userVO = dao.login(loginVO);

String msg = "";
String url = "";
if (userVO == null) {
	// 로그인 실패
	msg = "아이디 또는 패스워드를 잘못 입력했습니다.";
	url = "login.jsp";
} else {
	// 로그인 성공
	switch (userVO.getType()) {
		case "U" :
	msg = "관리자님 환영합니다";
	break;
		case "u" :
	msg = userVO.getId() + "님 환영합니다";
	break;
	}
	url = "/ZzongBank";

	// 세션 등록
	session.setAttribute("userVO", userVO);
}

pageContext.setAttribute("msg", msg);
pageContext.setAttribute("url", url);
%>
<script>
	alert('${msg}');
	location.href = '${url}'
</script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>