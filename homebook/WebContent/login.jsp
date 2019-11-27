<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" initial-scale="1">
<title>회원로그인및가입</title>
<link href="./css/bootstrap.css" rel='stylesheet' type='text/css'>
<link href="./css/boost.css" rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script src="./js/bootstrap.min.js" type="text/javascript"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script type="text/javascript">
	$(function() {

		$('#login-form-link').click(function(e) {
			$("#login-form").delay(100).fadeIn(100);
			$("#register-form").fadeOut(100);
			$('#register-form-link').removeClass('active');
			$(this).addClass('active');
			e.preventDefault();
		});
		$('#register-form-link').click(function(e) {
			$("#register-form").delay(100).fadeIn(100);
			$("#login-form").fadeOut(100);
			$('#login-form-link').removeClass('active');
			$(this).addClass('active');
			e.preventDefault();
		});

	});
</script>
<style type="text/css">
.panel-login {
	border-color: #ccc;
	-webkit-box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.2);
	-moz-box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.2);
	box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.2);
}

.panel-login>.panel-heading {
	color: #00415d;
	background-color: #fff;
	border-color: #fff;
	text-align: center;
}

.panel-login>.panel-heading a {
	text-decoration: none;
	color: #666;
	font-weight: bold;
	font-size: 15px;
	-webkit-transition: all 0.1s linear;
	-moz-transition: all 0.1s linear;
	transition: all 0.1s linear;
}

.panel-login>.panel-heading a.active {
	color: #029f5b;
	font-size: 18px;
}

.panel-login>.panel-heading hr {
	margin-top: 10px;
	margin-bottom: 0px;
	clear: both;
	border: 0;
	height: 1px;
	background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, 0),
		rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
	background-image: -moz-linear-gradient(left, rgba(0, 0, 0, 0),
		rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
	background-image: -ms-linear-gradient(left, rgba(0, 0, 0, 0),
		rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
	background-image: -o-linear-gradient(left, rgba(0, 0, 0, 0),
		rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
}

.panel-login input[type="text"], .panel-login input[type="email"],
	.panel-login input[type="password"] {
	height: 45px;
	border: 1px solid #ddd;
	font-size: 16px;
	-webkit-transition: all 0.1s linear;
	-moz-transition: all 0.1s linear;
	transition: all 0.1s linear;
}

.panel-login input:hover, .panel-login input:focus {
	outline: none;
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	box-shadow: none;
	border-color: #ccc;
}

.btn-login {
	background-color: #59B2E0;
	outline: none;
	color: #fff;
	font-size: 14px;
	height: auto;
	font-weight: normal;
	padding: 14px 0;
	text-transform: uppercase;
	border-color: #59B2E6;
}

.btn-login:hover, .btn-login:focus {
	color: #fff;
	background-color: #53A3CD;
	border-color: #53A3CD;
}

.forgot-password {
	text-decoration: underline;
	color: #888;
}

.forgot-password:hover, .forgot-password:focus {
	text-decoration: underline;
	color: #666;
}

.btn-register {
	background-color: #1CB94E;
	outline: none;
	color: #fff;
	font-size: 14px;
	height: auto;
	font-weight: normal;
	padding: 14px 0;
	text-transform: uppercase;
	border-color: #1CB94A;
}

.btn-register:hover, .btn-register:focus {
	color: #fff;
	background-color: #1CA347;
	border-color: #1CA347;
}
</style>
<script>
	$(document).ready(function() {
		$('#header_div').load('./common/header.jsp');
		$('#footer_div').load('./common/footer.jsp');
	});
</script>
<%
	String job = (String) request.getParameter("job");
%>


</head>
<body>

	<div id="header_div"></div>
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="card text-center">
				<div class="card-header">
					<ul class="nav nav-tabs card-header-tabs">
						<li class="nav-item"><a class="nav-link active" href="#"
							id="login-form-link">로그인</a></li>
						<li class="nav-item"><a class="nav-link" href="#"
							id="register-form-link">회원가입</a></li>


					</ul>
				</div>
			</div>

			<div class="card-body">

				<form id="login-form" action="login.do" method="post" role="form"
					style="display: block;">
					<div class="form-group">
						<input type="text" name="id" id="id" tabindex="1"
							class="form-control" placeholder="아이디" value="">
					</div>
					<div class="form-group">
						<input type="password" name="password" id="password" tabindex="2"
							class="form-control" placeholder="비밀번호">
					</div>
					<div class="form-group text-center">
						<input type="checkbox" tabindex="3" class="" name="remember"
							id="remember"> <label for="remember"> 내 정보 기억</label>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-sm-6 col-sm-offset-3">
								<input type="submit" name="login-submit" id="login-submit"
									tabindex="4" class="form-control btn btn-login" value="로그인">
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-lg-12">
								<div class="text-center">
									<a href="https://phpoll.com/recover" tabindex="5"
										class="forgot-password">비밀번호를 잊으셨나요?</a>
								</div>
							</div>
						</div>
					</div>
				</form>
				<!-- 
						private String mid;//회원아이디
						private String mname;//회원이름
						private String mpassword;//회원패스워드
						private String mphone;//회원전화번호
						private String mjoinDate;//가입일자 
						
						 -->
				<form id="register-form" action="register.do" method="post"
					role="form" style="display: none;">
					<div class="form-group">
						<input type="text" name="mid" id="mid" tabindex="1"
							class="form-control" placeholder="아이디" value="">
					</div>
					<div class="form-group">
						<input type="text" name="mname" id="mname" tabindex="1"
							class="form-control" placeholder="회원이름" value="">
					</div>
					<div class="form-group">
						<input type="password" name="mpassword" id="mpassword"
							tabindex="2" class="form-control" placeholder="비밀번호">
					</div>
					<div class="form-group">
						<input type="password" name="confirm-mpassword"
							id="confirm-mpassword" tabindex="2" class="form-control"
							placeholder="비밀번호확인">

					</div>

					<div class="form-group">
						<input type="text" name="mphone" id="mphone" tabindex="2"
							class="form-control" placeholder="전화번호">
					</div>
					<div class="form-group">
						<input type="date" name="mjoinDate" id="mjoinDate" tabindex="2"
							class="form-control" placeholder="비밀번호 확인">

					</div>
					<script>
						document.getElementById('mjoinDate').value = new Date()
								.toISOString().substring(0, 10);
						;
					</script>
					<div class="form-group">
						<div class="row">
							<div class="col-sm-6 col-sm-offset-3">
								<input type="submit" name="register-submit" id="register-submit"
									tabindex="4" class="form-control btn btn-register"
									value="회원 가입">
							</div>
						</div>
					</div>
				</form>

			</div>
		</div>

	</div>
	</div>


	<div id="footer_div"></div>

</body>
</html>