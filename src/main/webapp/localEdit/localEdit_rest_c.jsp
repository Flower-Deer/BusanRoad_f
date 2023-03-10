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
	font-family: ?????? ??????;
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

	<!-- ?????? -->
    <header class="d-flex flex-wrap align-items-center justify-content-md-between border-bottom">
      	<a href="../main/main.jsp">
			<img src=../resources/img/logo2.png class="himg" style="width: 220px; height: 100px;">
		</a>
		
      	<ul class="nav col-12 col-md-auto mb-2 mb-md-0" >
	        <li><a href="../local/local.jsp" class="nav-link px-2 link-dark">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;???????????? ??????</a></li>
	        <li><a href="../beach/beach.jsp" class="nav-link px-2 link-dark">&nbsp;&nbsp;????????????</a></li>
	        <li><a href="../free/page?page=1" class="nav-link px-2 link-dark">&nbsp;&nbsp;????????? ??????</a></li>
	        <li><a href="../search/main.jsp" class="nav-link px-2 link-dark">&nbsp;&nbsp;??????</a></li>
	        <li><a href="../confusion/confusion?id=1810011&lat=35.09846683706733&lng=129.03679919242902" class="nav-link px-2 link-dark">&nbsp;&nbsp;????????? ????????????&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
     	</ul>
    </header>

	<!-- ????????? ??? ?????? -->
	<div class="intro" style="font-family: 'GmarketSansMedium';">
		<h1 style="font-weight: 700; text-align: center;">????????? ??????</h1>
		<br>
		<hr>
		<br>
		<h3 style="text-align: center;">????????? ?????? ??????</h3>
	</div>


	<!-- ????????? ?????? -->
	<div class="side-menu">

		<b style="color: black; font-size: 24px;">????????? ?????????</b>
		<hr style="color: black;">

		<ul class="list-unstyled ps-0">

			<li class="mb-4">
				<button id="local-li"
					class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed"
					aria-expanded="true" onclick="location.href='localEdit_tour_c.jsp'">
					????????? ??????</button>
				<hr style="border-style: dashed;">
			</li>

			<li class="mb-4">
				<button id="local-li"
					class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed"
					aria-expanded="true" onclick="location.href='localEdit_tour_s.jsp'">
					????????? ??????</button>
				<hr style="border-style: dashed;">
			</li>

			<li class="mb-4">
				<button id="local-li"
					class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed"
					aria-expanded="true" onclick="location.href='localEdit_rest_c.jsp'">
					????????? ??????</button>
				<hr style="border-style: dashed;">
			</li>

			<li class="mb-4">
				<button id="local-li"
					class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed"
					aria-expanded="true" onclick="location.href='localEdit_rest_s.jsp'">
					????????? ??????</button>
				<hr style="border-style: dashed;">
			</li>

			<li class="mb-4">
				<button id="local-li"
					class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed"
					aria-expanded="true" onclick="location.href='localEdit_acco_c.jsp'">
					?????? ??????</button>
				<hr style="border-style: dashed;">
			</li>

			<li class="mb-4">
				<button id="local-li"
					class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed"
					aria-expanded="true" onclick="location.href='localEdit_acco_s.jsp'">
					?????? ??????</button>
				<hr style="border-style: dashed;">
			</li>

		</ul>
	</div>
	<!-- ????????? ?????? ?????? ??? -->
	<div
		style="font-family: 'GmarketSansMedium'; margin-top: 80px; width: 900px; float: left; height: 1000px;">
		<div style="float: right; margin-top: 120px;">
			<form method="post" action="rest_insert">
				<table style="width: 800px; font-size: 20px;">
					<tr style="height: 50px;">
						<td align="left">??????</td>
						<td align="left"><input
							style="width: 600px; font-size: 15px;" type="text" id="name"
							name="name"></td>
					</tr>
					<tr style="height: 50px;">
						<td align="left">??????</td>
						<td align="left"><input
							style="width: 600px; font-size: 15px;" type="text" id="address"
							name="address"></td>
					</tr>
					<tr style="height: 50px;">
						<td align="left">??????</td>
						<td align="left"><input
							style="width: 600px; font-size: 15px;" type="text" id="latitude"
							name="latitude"></td>
					</tr>
					<tr style="height: 50px;">
						<td align="left">??????</td>
						<td align="left"><input
							style="width: 600px; font-size: 15px;" type="text"
							id="longtitude" name="longtitude"></td>
					</tr>
					<tr style="height: 50px;">
						<td align="left">??????</td>
						<td align="left"><input
							style="width: 600px; font-size: 15px;" type="text" id="menu"
							name="menu">
					</tr>
					<tr style="height: 50px;">
						<td align="left">????????????</td>
						<td align="left"><input
							style="width: 600px; font-size: 15px;" type="text" id="time"
							name="time">
					</tr>
					<tr style="height: 50px;">
						<td align="left">??????</td>
						<td align="left"><input
							style="width: 600px; font-size: 15px;" type="text" id="off"
							name="off"></td>
					</tr>
					<tr style="height: 50px;">
						<td align="left">????????????</td>
						<td align="left"><input
							style="width: 600px; font-size: 15px;" type="text" id="park"
							name="park"></td>
					</tr>
					<tr style="height: 50px;">
						<td align="left">????????????</td>
						<td align="left"><input
							style="width: 600px; font-size: 15px;" type="text" id="category"
							name="category"></td>
					</tr>
					<tr style="height: 50px;">
						<td align="left">??????1</td>
						<td align="left"><input style="width: 600px; font-size: 15px;" type="text"
							id="link1" name="link1"></td>
					</tr>
					<tr style="height: 50px;">
						<td align="left">??????2</td>
						<td align="left"><input style="width: 600px; font-size: 15px;" type="text"
							id="link2" name="link2"></td>
					</tr>
					<tr style="height: 50px;">
						<td align="left">??????3</td>
						<td align="left"><input style="width: 600px; font-size: 15px;" type="text"
							id="link3" name="link3"></td>
					</tr>
					<tr style="height: 50px;">
						<td align="left">?????????1</td>
						<td align="left"><input
							style="width: 600px; font-size: 15px;" id="img" name="img"
							type="file" multiple="multiple"></td>
					</tr>
					<tr style="height: 50px;">
						<td align="left">?????????2</td>
						<td align="left"><input
							style="width: 600px; font-size: 15px;" id="img2" name="img2"
							type="file" multiple="multiple"></td>
					</tr>
					<tr style="height: 50px;">
						<td align="left">?????????3</td>
						<td align="left"><input
							style="width: 600px; font-size: 15px;" id="img3" name="img3"
							type="file" multiple="multiple"></td>
					</tr>
					<tr align="right">
						<td colspan="2">
							<button type="submit" class="btn btn-outline-dark mt-auto">??????</button>
							<button type="reset" class="btn btn-outline-dark mt-auto">??????</button>
						</td>
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
				&lt;????????????&gt;<br> ?????? : KakaoMap, TMap <br> ????????? ?????? : ??????????????????<br>
				????????? ?????? : SK<br> <br>Tel(?????????) : 010.8873.1998
			</p>
			<hr>
			<P>(???)MutliCampus_Project</P>
			<a href="chk.jsp" class="admin">?????????</a>
			<p class="admin">&nbsp;: ?????????,?????????,?????????,?????????,?????????</p>
		</div>
		<br> <br>
	</div>
</body>

</html>