<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="kr.ac.kopo.util.JDBCClose"%>
<%@ page import="java.sql.*"%>
<%@ page import="kr.ac.kopo.util.ConnectionFactory"%>
<%@ page import="kr.ac.kopo.member.dao.MemberDAO"%>
<%@ page import="kr.ac.kopo.member.vo.MemberVO"%>

<%

request.setCharacterEncoding("utf-8");

String id = request.getParameter("id");
String password = request.getParameter("password");
String name = request.getParameter("name");
String tel1 = request.getParameter("tel1");
String emailId = request.getParameter("email_id");
String post = request.getParameter("post");
String basicAddr = request.getParameter("basic_addr");

MemberVO member = new MemberVO();
member.setId(id);
member.setName(name);
member.setPassword(password);
member.setEmailId(emailId);
member.setTel1(tel1);
member.setPost(post);
member.setBasicAddr(basicAddr);

MemberDAO dao = new MemberDAO();
dao.insertMember(member);
%>

<script>
	alert("회원가입을 완료했습니다");
	// 이동
	location.href = "/ZzongBank/jsp/login/login.jsp"
</script>