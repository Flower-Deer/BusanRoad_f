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
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

body {
	width: 100%;
	height: 100%;
	font-family: 'GmarketSansMedium';
}

li {
	margin-left: 5px;
}

a:link {
	color: black;
	text-decoration: none;
}

a:visited {
	color: black;
	text-decoration: none;
}

#lir {
	margin-right: 70px;
}

.nav {
	font-family: 'GmarketSansMedium';
	font-size: 23px;
	margin-right: 30px;
}

.himg {
	width: 220px;
	height: 100px;
	margin-left: 70px;
	margin-top: 5px;
	margin-bottom: 5px;
}

.intro {
	background-color: #215BA3;
	color: white;
	padding-top: 150px;
	padding-bottom: 100px;
}

.admin {
	float: left;
	background-position: bottom;
}

#bottom {
	text-align: bottom;
	/* width: 100vw;
	height: 35vh; */
	background: linear-gradient(#D3D3D3 67%, #A9A9A9 33%);
	clear: both;
}
/* side-menu css */
.side-menu {
	font-family: 'GmarketSansMedium';
	width: 280px;
	float: left;
	margin-right: 200px;
	margin-left: 100px;
	margin-top: 200px;
	margin-bottom: 100px;
	padding-left: 40px;
	padding-right: 40px;
	padding-top: 50px;
	border: 1px solid black;
	border-radius: 50px;
}

#local-li {
	font-size: 18px;
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
	font-family: FontAwesome, "Open Sans", Verdana, sans-serif;
	font-style: normal;
	font-weight: normal;
	text-decoration: inherit;
}

input:focus {
	outline: none
}

::-webkit-input-placeholder {
	/* Chrome/Opera/Safari */
	color: #315A9E;
	font-family: 맑은 고딕;
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
<!-- css -->
<link href="../resources/css/localEdit.css" rel="stylesheet">
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
	<header
		class="d-flex flex-wrap align-items-center justify-content-md-between border-bottom">
		<a href="../main/main.jsp"> <img src=../resources/img/logo2.png
			class="himg">
		</a>

		<ul class="nav col-12 col-md-auto mb-2 mb-md-0">
			<li><a href="local.jsp" class="nav-link px-2 link-dark">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;지역별로
					보기</a></li>
			<li><a href="../beach/beach.jsp" class="nav-link px-2 link-dark">&nbsp;&nbsp;해수욕장</a></li>
			<li><a href="#" class="nav-link px-2 link-dark">&nbsp;&nbsp;무장애
					여행</a></li>
			<li><a href="#" class="nav-link px-2 link-dark">&nbsp;&nbsp;검색</a></li>
			<li><a
				href="../confusion/confusion?id=1810011&lat=35.09846683706733&lng=129.03679919242902"
				class="nav-link px-2 link-dark">&nbsp;&nbsp;혼잡도
					알아보기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
		</ul>
	</header>

	<!-- 페이지 별 소개 -->
	<div class="intro" style="font-family: 'GmarketSansMedium';">
		<h1 style="font-weight: 700; text-align: center;">음식점 조회, 수정, 삭제</h1>
		<br>
		<hr>
		<br>
		<h3 style="text-align: center;">음식점 명 조회후 수정, 삭제</h3>
	</div>


	<!-- 사이드 메뉴 -->
	<div class="side-menu">

		<b style="color: black; font-size: 24px;">관리자 페이지</b>
		<hr style="color: black;">

		<ul class="list-unstyled ps-0">

			<li class="mb-4">
				<button id="local-li"
					class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed"
					aria-expanded="true" onclick="location.href='localEdit_tour_c.jsp'">
					관광지 등록</button>
				<hr style="border-style: dashed;">
			</li>

			<li class="mb-4">
				<button id="local-li"
					class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed"
					aria-expanded="true" onclick="location.href='localEdit_tour_s.jsp'">
					관광지 조회</button>
				<hr style="border-style: dashed;">
			</li>

			<li class="mb-4">
				<button id="local-li"
					class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed"
					aria-expanded="true" onclick="location.href='localEdit_rest_c.jsp'">
					음식점 등록</button>
				<hr style="border-style: dashed;">
			</li>

			<li class="mb-4">
				<button id="local-li"
					class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed"
					aria-expanded="true" onclick="location.href='localEdit_rest_s.jsp'">
					음식점 조회</button>
				<hr style="border-style: dashed;">
			</li>

			<li class="mb-4">
				<button id="local-li"
					class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed"
					aria-expanded="true" onclick="location.href='localEdit_acco_c.jsp'">
					숙박 등록</button>
				<hr style="border-style: dashed;">
			</li>

			<li class="mb-4">
				<button id="local-li"
					class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed"
					aria-expanded="true" onclick="location.href='localEdit_acco_s.jsp'">
					숙박 조회</button>
				<hr style="border-style: dashed;">
			</li>

		</ul>
	</div>
	<!-- 음식점 등록 조회 폼 -->
	<div
		style="font-family: 'GmarketSansMedium'; margin-top: 80px; width: 900px; float: left; height: 1000px;">
		<div style="float: right; margin-top: 120px;">
			<form method="post" action="${path}/www/rest_delete?num=${vo.num}">
				<h5 style="color: red;">⭐ '${vo.name}' 에 대한 정보입니다.</h5>
				<table style="width: 800px; font-size: 20px;">
					<tr style="height: 50px;">
						<td align="left" style="width: 200x;">번호</td>
						<td align="left" style="width: 600px;"><input
							style="width: 600px; font-size: 15px;" type="text" id="num"
							name="num" value="${vo.num}" readonly="readonly"></td>
					</tr>
					<tr style="height: 50px;">
						<td align="left">이름</td>
						<td align="left"><input
							style="width: 600px; font-size: 15px;" type="text" id="name"
							name="name" value="${vo.name}"></td>
					</tr>
					<tr style="height: 50px;">
						<td align="left">주소</td>
						<td align="left"><input
							style="width: 600px; font-size: 15px;" type="text" id="address"
							name="address" value="${vo.address}"></td>
					</tr>
					<tr style="height: 50px;">
						<td align="left">메뉴</td>
						<td align="left"><input
							style="width: 600px; font-size: 15px;" type="text" id="menu"
							name="menu" value="${vo.menu}">
					</tr>
					<tr style="height: 50px;">
						<td align="left">영업시간</td>
						<td align="left"><input
							style="width: 600px; font-size: 15px;" type="text" id="time"
							name="time" value="${vo.time}">
					</tr>
					<tr style="height: 50px;">
						<td align="left">휴무</td>
						<td align="left"><input
							style="width: 600px; font-size: 15px;" type="text" id="off"
							name="off" value="${vo.off}"></td>
					</tr>
					<tr style="height: 50px;">
						<td align="left">주차시설</td>
						<td align="left"><input
							style="width: 600px; font-size: 15px;" type="text" id="park"
							name="park" value="${vo.park}"></td>
					</tr>
					<tr style="height: 50px;">
						<td align="left">카테고리</td>
						<td align="left"><input
							style="width: 600px; font-size: 15px;" type="text" id="category"
							name="category" value="${vo.category}"></td>
					</tr>
					<tr style="height: 50px;">
						<td align="left">링크1</td>
						<td><input style="width: 600px; font-size: 15px;" type="text"
							id="link1" name="link1" value="${vo.link1}"></td>
					</tr>
					<tr style="height: 50px;">
						<td align="left">링크2</td>
						<td><input style="width: 600px; font-size: 15px;" type="text"
							id="link2" name="link2" value="${vo.link2}"></td>
					</tr>
					<tr style="height: 50px;">
						<td align="left">링크3</td>
						<td><input style="width: 600px; font-size: 15px;" type="text"
							id="link3" name="link3" value="${vo.link3}"></td>
					</tr>
					<tr style="height: 50px;">
						<td align="left">이미지1</td>
						<td align="left"><input
							style="width: 600px; font-size: 15px;" id="img1" name="img1"
							type="file" multiple="multiple"></td>
					</tr>
					<tr style="height: 50px;">
						<td align="left">이미지2</td>
						<td align="left"><input
							style="width: 600px; font-size: 15px;" id="img2" name="img2"
							type="file" multiple="multiple"></td>
					</tr>
					<tr style="height: 50px;">
						<td align="left">이미지3</td>
						<td align="left"><input
							style="width: 600px; font-size: 15px;" id="img3" name="img3"
							type="file" multiple="multiple"></td>
					</tr>
					<tr align="right">
						<td colspan="2"><button class="btn btn-outline-dark mt-auto"
								type="submit">삭제</button>
							<button class="btn btn-outline-dark mt-auto" type="button"
								onclick="location.href='localEdit_rest_s.jsp'">취소</button></td>
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
			<a href="#" class="admin">관리자</a>
			<p class="admin">&nbsp;: 홍혜림,한희정,이창명,장재일,정유진</p>
		</div>
		<br> <br>
	</div>
</body>

</html>