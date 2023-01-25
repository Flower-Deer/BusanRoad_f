<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세페이지</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
	crossorigin="anonymous"></script>
	
<style>
.card {
	width: 50px;
	height: 100px;
	margin-top: 10px;
}

.card-img-top {
	width: 268px;
	height: 200px;
}
.icon{
	width:30px;
	height:30px;
}
</style>
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
		
			<div class="container" style ="padding-left:300px; padding-top:100px;">
				
				<img alt="" src="${oneimg.firstimage}" style="width : 800px; padding-left:100px;">
				<br>
				<br>
				<h1>${onetitle.title}</h1>
				<br>
				
				<table class="table">
							<tr>
								<c:if test = "${one.parking == ''}">
								</c:if>
								<c:if test = "${one.parking != ''}">
								<td><img src="resources/img/parking.png" class="icon">  주차시설 : ${one.parking}</td>
								</c:if>
								
								
								
							</tr>
							<tr>
								
								<c:if test = "${one.publictransport == ''}">
								</c:if>
								<c:if test = "${one.publictransport != ''}">
								<td><img src="resources/img/road.png" class="icon">  이동경로 : ${one.publictransport}</td>
								</c:if>
								
							</tr>
							<tr>
								<c:if test = "${one.wheelchair == ''}">
								</c:if>
								<c:if test = "${one.wheelchair != ''}">
								<td><img src="resources/img/wheelchair.png" class="icon">  휠체어 : ${one.wheelchair}</td>
								</c:if>
				
								
							</tr>
							<tr>
							
								<c:if test = "${one.exit == ''}">
								</c:if>
								<c:if test = "${one.exit != ''}">
								<td><img src="resources/img/enter.png" class="icon">  주 출입구 : ${one.exit}</td>
								</c:if>
							
							</tr>
							<tr>
							
								<c:if test = "${one.elevator == ''}">
								</c:if>
								<c:if test = "${one.elevator != ''}">
								<td><img src="resources/img/elevator.png" class="icon">  엘리베이터 : ${one.elevator}</td>
								</c:if>
								
							</tr>
							<tr>
								<c:if test = "${one.auditorium == ''}">
								</c:if>
								<c:if test = "${one.auditorium != ''}">
								<td><img src="resources/img/auditorium.png" class="icon">  관람석 : ${one.auditorium}</td>
								</c:if>
								
								
							</tr>
							<tr>
							
								<c:if test = "${one.room == ''}">
								</c:if>
								<c:if test = "${one.room != ''}">
								<td><img src="resources/img/room.png" class="icon">  객실 : ${one.room}</td>
								</c:if>
								
								
							</tr>
							<tr>
								<c:if test = "${one.handicapetc == ''}">
								</c:if>
								<c:if test = "${one.handicapetc != ''}">
								<td><img src="resources/img/etc.png" class="icon">  기타 시설 : ${one.handicapetc}</td>
								</c:if>
								
								
							</tr>
							<tr>
								<c:if test = "${one.braileblock == ''}">
								</c:if>
								<c:if test = "${one.braileblock != ''}">
								<td><img src="resources/img/block.png" class="icon">  점자블록 : ${one.braileblock}</td>
								</c:if>
								
								
							</tr>
							<tr>
								<c:if test = "${one.helpdog == ''}">
								</c:if>
								<c:if test = "${one.helpdog != ''}">
								<td><img src="resources/img/helpdog.png" class="icon">  보조견 : ${one.helpdog}</td>
								</c:if>
								
								
							</tr>
							<tr>
							<c:if test = "${one.guidehuman == ''}">
								</c:if>
								<c:if test = "${one.guidehuman != ''}">
								<td><img src="resources/img/guidehuman.png" class="icon">  안내원 : ${one.guidehuman}</td>
								</c:if>
								
							</tr>
							<tr>
							
							<c:if test = "${one.audioguide == ''}">
								</c:if>
								<c:if test = "${one.audioguide != ''}">
								<td><img src="resources/img/audio.png" class="icon">  음성안내 : ${one.audioguide}</td>
								</c:if>
								
							
							</tr>
							<tr>
								<c:if test = "${one.brailepromotion == ''}">
								</c:if>
								<c:if test = "${one.brailepromotion != ''}">
								<td><img src="resources/img/promotion.png" class="icon">  점자안내판 : ${one.brailepromotion}</td>
								</c:if>
								
								
							</tr>
							<tr>
								<c:if test = "${oneoverview.overview == ''}">
								</c:if>
								<c:if test = "${oneoverview.overview != ''}">
								<td>상세안내 : ${oneoverview.overview}</td>
								</c:if>
								
							</tr>
							
				</table>
				<br>
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