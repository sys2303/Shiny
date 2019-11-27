<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.sys.dto.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 모두 출력(관리자용)</title>
</head>
<body>
	<h1 align="center">모든 회원 정보 출력</h1>
	<div align="right">
	<a href = "../main.do">메인화면</a>
	</div>
	<hr>
	<%
		List<BMember> memList = 
			(List<BMember>)session.getAttribute("memList");
		out.print("<h3><table border='1'>");
		out.print("<tr>");
		out.print("<th>아이디</th>");
		out.print("<th>이름</th>");
		out.print("<th>패스워드</th>");
		out.print("<th>전화번호</th>");
		out.print("</tr>");
		
		for(BMember x:memList){
			out.print("<tr>");
				out.print("<td>"+x.getMid()+"</td>");
				out.print("<td>"+x.getMname()+"</td>");
				out.print("<td>"+x.getMpassword()+"</td>");
				out.print("<td>"+x.getMphone()+"</td>");
			out.print("</tr>");
		}
		out.print("</h3></table>");
	%>
	<hr> 
	
	
	
	
	
	
	
</body>
</html>