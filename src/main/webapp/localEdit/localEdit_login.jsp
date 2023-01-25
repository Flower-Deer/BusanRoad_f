<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<style type="text/css">
@font-face {
    font-family: 'GmarketSansMedium';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
body{
width: 100%;
height: 100%;
font-family: 'GmarketSansMedium';
}
li {
	margin-left: 5px;
}
a:link { color: black; text-decoration: none;}
a:visited { color: black; text-decoration: none;}
#lir{
	margin-right: 70px;
}
.nav{
font-family: 'GmarketSansMedium';
	font-size: 23px;
	margin-right: 30px;
}
.himg{
	width: 220px;
	height: 100px;
	margin-left: 70px;
	margin-top: 5px;
	margin-bottom: 5px;
}
.intro{
	background-color:#215BA3;
	color: white;
	padding-top:150px;
	padding-bottom: 100px;
}
.admin{
	float: left;
	background-position: bottom;
}
#bottom{
	text-align: bottom;
	/* width: 100vw;
	height: 35vh; */
	background: linear-gradient(#D3D3D3 67%, #A9A9A9 33%);
	clear: both;
}
/* button css */
.login_btn {
	width: 200px;
	font-size: 16px;
	font-weight: 600;
	color: #fff;
	cursor: pointer;
	margin: 20px;
	height: 55px;
	text-align: center;
	border: none;
	background-size: 300% 100%;
	border-radius: 50px;
	moz-transition: all .4s ease-in-out;
	-o-transition: all .4s ease-in-out;
	-webkit-transition: all .4s ease-in-out;
	transition: all .4s ease-in-out;
	background-image: linear-gradient(to right, #25aae1, #4481eb, #04befe, #3f86ed);
	box-shadow: 0 4px 15px 0 rgba(65, 132, 234, 0.75);
	font-family: 'GmarketSansMedium';
}

.login_btn:hover {
	background-position: 100% 0;
	moz-transition: all .4s ease-in-out;
	-o-transition: all .4s ease-in-out;
	-webkit-transition: all .4s ease-in-out;
	transition: all .4s ease-in-out;
}

.login_btn:focus {
	outline: none;
}
/* input css */
input {
	height: 40px;
	width: 100%;
	margin: 20px auto;
	border-left: none;
	border-right: none;
	border-top: none;
	color: #315A9E;
	background: white;
	padding-left: 5px;
	font-family: 'GmarketSansMedium';
	font-style: normal;
	font-weight: bold;
	text-decoration: inherit;
}

input:focus {
	outline: none
}

::-webkit-input-placeholder {
	/* Chrome/Opera/Safari */
	color: #315A9E;
	font-family: 'GmarketSansMedium';
}
</style>

<title>Insert title here</title>

<jsp:include page="header.jsp"></jsp:include>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom fonts for this template-->
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">
<!-- Custom styles for this template-->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- login css -->
<link
	href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
<!-- css -->
<link href="../resources/css/login.css" rel="stylesheet">
<link href="../resources/css/all.css" rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<!-- jquery -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
</head>

<body>
<!-- 헤더 -->
    <header class="d-flex flex-wrap align-items-center justify-content-md-between border-bottom">
      	<a href="../main/main.jsp">
			<img src=../resources/img/logo2.png class="himg" style="width: 220px; height: 100px;">
		</a>
		
      	<ul class="nav col-12 col-md-auto mb-2 mb-md-0" >
	        <li><a href="../local/local.jsp" class="nav-link px-2 link-dark">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;지역별로 보기</a></li>
	        <li><a href="../beach/beach.jsp" class="nav-link px-2 link-dark">&nbsp;&nbsp;해수욕장</a></li>
	        <li><a href="../free/page?page=1" class="nav-link px-2 link-dark">&nbsp;&nbsp;무장애 여행</a></li>
	        <li><a href="../search/main.jsp" class="nav-link px-2 link-dark">&nbsp;&nbsp;검색</a></li>
	        <li><a href="../confusion/confusion?id=1810011&lat=35.09846683706733&lng=129.03679919242902" class="nav-link px-2 link-dark">&nbsp;&nbsp;혼잡도 알아보기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
     	</ul>
    </header>
    
<!-- 페이지 별 소개 -->
	<div class="intro" style="font-family: 'GmarketSansMedium';">
		<h1 style="font-weight: 700;">로그인</h1>
		<br>
		<hr>
		<br>
		<h3>관리자 로그인 페이지 입니다.</h3>		
	</div> 

	<!-- 로그인 화면 -->
	<div id="login_position" class="intro"
		style="background-color: white; height: 500px; position: relative">
		<div
			style="background-color: white; position: absolute; top: 35%; left: 47%; margin: -50px 0 0 -50px;">
			<form action="localEdit_login_chk.jsp" method="post"
				style="text-align: center;">
				<table>
					<tr style="height: 50px;">
						<td><input id="id" name="id" placeholder="✉ 아이디"
							class="login_input"></td>
					</tr>
					<tr style="height: 50px;">
						<td><input id="pw" name="pw" placeholder="🔒︎ 비밀번호"
							class="login_input"> <br></td>
					</tr>
					<tr>
						<td><button type="submit" class="login_btn">
								<span>로그인</span>
							</button></td>
					</tr>
				</table>
			</form>
		</div>
	</div>

	<!-- Bottom -->
	<div id="bottom">
		<div class="container">
			<br>
			<h5>BusanRoad</h5>
			<p>
				&lt;정보제공&gt;<br> 지도 : KakaoMap, TMap <br> 여행지 정보 : 한국관광공사<br>
				혼잡도 정보 : SK<br> <br>Tel(문의처) : 010.8873.1998
			</p>
			<hr>
			<P>(주)MutliCampus_Project</P>
			<a href="chk.jsp" class="admin">관리자</a>
			<p class="admin">&nbsp;: 홍혜림,한희정,이창명,장재일,정유진</p>
		</div>
		<br> <br>
	</div>
</body>
</html>