<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>무장애 여행페이지</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<script src="/docs/5.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script type="text/javascript">
	$(function() {
		$(".b1").on("click", function() {
			pageNo = $(this).attr("pageNo");
			$.ajax({
				url : "barrierFreePage2",
				data : {
					page : pageNo

				},
				success : function(x) {
					$("#result").html(x);
				}
			})
		}); //b1
		$(".b2").click(function() {
			alert("test")
			pageNo = $(this).attr("pageNo");
			$.ajax({
				url : "barrierFreePage2",
				data : {
					page : pageNo

				},
				success : function(x) {
					$(".row").html("test");
				}
			})
		});
	})
</script>
<style type="text/css">
@font-face {
	font-family: 'GmarketSansMedium';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

.card {
	width: 270px;
	height: 300px;
	margin-top: 10px;
}

.card-img-top {
	width: 268px;
	height: 200px;
}

img {
	width: 268px;
	height: 200px;
}

.table {
	width: 900px;
}

.b2 {
	min-width: 70px;
}

body {
	width: 100%;
	height: 100%;
	font-family: 'GmarketSansMedium';
}

.btn {
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
/* local 메인 페이지 한정 css */
.side-menu {
	font-family: 'GmarketSansMedium';
	width: 280px;
	float: left;
	margin-right: 100px;
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
</style>
<link href="resources/css/all.css" rel="stylesheet">
</head>
<body>

	<!-- 헤더 -->
	<header
		class="d-flex flex-wrap align-items-center justify-content-md-between border-bottom">
		<a href="../main/main.jsp"> <img src="resources/img/logo2.png" alt="logo2.png"
			class="himg">

		</a>

		<ul class="nav col-12 col-md-auto mb-2 mb-md-0" >
	        <li><a href="../local/local.jsp" class="nav-link px-2 link-dark">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;지역별로 보기</a></li>
	        <li><a href="../beach/beach.jsp" class="nav-link px-2 link-dark">&nbsp;&nbsp;해수욕장</a></li>
	        <li><a href="page?page=1" class="nav-link px-2 link-dark">&nbsp;&nbsp;무장애 여행</a></li>
	        <li><a href="../search/main.jsp" class="nav-link px-2 link-dark">&nbsp;&nbsp;검색</a></li>
	        <li><a href="../confusion/confusion?id=1810011&lat=35.09846683706733&lng=129.03679919242902" class="nav-link px-2 link-dark">&nbsp;&nbsp;혼잡도 알아보기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
     	</ul>
	</header>
	<hr>
	<!-- 페이지 별 소개 -->
	<div class="main">
		<div class="intro" style="font-family: 'GmarketSansMedium';">
			<h1 style="font-weight: 700;">부산 무장애여행</h1>
			<br>
			<hr>
			<br>
			<h3>
				어르신 어린이 장애인 모두<br> <br>편안하고 안전한 부산여행을 위해
			</h3>
		</div>

		<div class="container">


			<div style="padding-left: 450px; padding-top: 15px;">
				<a href="search"><button type="button" class="btn btn-secondary">주차장+엘리베이터</button></a> 
				<a href="search2"><button type="button" class="btn btn-secondary">주차장+엘리베이터+점자블록</button></a>
			</div>

			<div class="container"
				style="content-align: center; text-align: center; margin-left: 100px; padding-top: 20px;">
				<div id="result">


					<!-- 카드 -->
					<div style="margin-top: 30px; float: left;">
						<c:forEach var="vo" items="${list}">
							<div class="local-object"
								style="float: left; height: 330px; width: 400px; margin-top: 30px;">
								<div class="card h-100">
									<img class="thumbnail" src=${vo.firstimage } alt="..." />
									<div class="text-center" style="margin-top: 5px;">
										<h5 class="fw-bolder">${vo.title}</h5>
										<br> <a class="btn btn-outline-dark mt-auto"
											href="barrierFreeDetail?contentid=${vo.contentid}">상세보기</a>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>



				</div>
				<div style="margin:5px;">
				<%
					//model의 속성값을 꺼낼 때는 request.getAttribute("모델명");
				int pages = Integer.parseInt(request.getAttribute("pages").toString());

				for (int p = 1; p <= pages; p++) {
				%>
				<button type="button" class="b1 btn btn-secondary" pageNo="<%=p%>"
					style="background: #215BA3; color: white;"><%=p%></button>
				<%
					}
				%>
				</div>
			</div>

		</div>
	</div>
 <!-- Bottom -->
	<div id="bottom">
		<div class="container">
			<br>
			<h5>BusanRoad</h5>
			<p>&lt;정보제공&gt;<br>
			지도 : KakaoMap, TMap <br>
			여행지 정보 : 한국관광공사<br>
			혼잡도 정보 : SK<br>
			<br>Tel(문의처) : 010.8873.1998</p>
			<hr>
			<P>(주)MutliCampus_Project</P>
			<a href="#" class="admin">관리자</a>
			<p class="admin">&nbsp;: 홍혜림,한희정,이창명,장재일,정유진</p>
		</div>
		<br><br>
	</div>

</body>
</html>