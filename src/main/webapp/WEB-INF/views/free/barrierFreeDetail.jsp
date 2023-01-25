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
</style>
</head>
<body>

	<!-- 헤더 -->
	<div class="container">
		<header class="d-flex justify-content-center py-3">
			<h1 style="color: #1E4FFF;">🕊부산로드🕊 &nbsp;&nbsp;&nbsp;</h1>
			<ul class="nav nav-pills">
				<li class="nav-item"><a href="#" class="nav-link">지역별로 보기</a></li>
				<li class="nav-item"><a href="#" class="nav-link">해수욕장</a></li>
				<li class="nav-item"><a href="#" class="nav-link">무장애 여행</a></li>
				<li class="nav-item"><a href="#" class="nav-link">검색</a></li>
				<li class="nav-item"><a href="#" class="nav-link">혼잡도 알아보기</a></li>
			</ul>
		</header>
	
		<hr>
		
			<div class="col-md-9 col-lg-8 "
				style="text-align: center; padding-top: 20px;">
				<img alt="" src="${oneimg.firstimage}">
				<table class="table">
							<tr>
								<td>주차시설 :${one.parking}
								<c:if test = "${one.parking == ''}">없음</c:if>
								
								
								</td>
							</tr>
							<tr>
								<td>이동경로 : ${one.publictransport}
								<c:if test = "${one.publictransport == ''}">없음</c:if>
								</td>
							</tr>
							<tr>
								<td>휠체어 : ${one.wheelchair}
								<c:if test = "${one.wheelchair == ''}">없음</c:if>
								</td>
								
							</tr>
							<tr>
								<td>주 출입구 : ${one.exit}
								<c:if test = "${one.exit == ''}">없음</c:if>
								</td>
							</tr>
							<tr>
								<td>엘리베이터 : ${one.elevator}
								<c:if test = "${one.elevator == ''}">없음</c:if>
								</td>
							</tr>
							<tr>
								<td>관람석 : ${one.auditorium}
								<c:if test = "${one.auditorium == ''}">없음</c:if>
								</td>
							</tr>
							<tr>
								<td>객실 : ${one.room}
								<c:if test = "${one.room == ''}">없음</c:if>
								</td>
							</tr>
							<tr>
								<td>기타 시설 : ${one.handicapetc}
								<c:if test = "${one.handicapetc == ''}">없음</c:if>
								</td>
							</tr>
							<tr>
								<td>점자블록 : ${one.braileblock}
								<c:if test = "${one.braileblock == ''}">없음</c:if>
								</td>
							</tr>
							<tr>
								<td>보조견 : ${one.helpdog}
								<c:if test = "${one.helpdog == ''}">없음</c:if>
								</td>
							</tr>
							<tr>
								<td>안내원 : ${one.guidehuman}
								<c:if test = "${one.guidehuman == ''}">없음</c:if>
								</td>
							</tr>
							<tr>
								<td>음성안내 : ${one.audioguide}
								<c:if test = "${one.audioguide == ''}">없음</c:if>
								</td>
							</tr>
							<tr>
								<td>점자안내판 : ${one.brailepromotion}
								<c:if test = "${one.brailepromotion == ''}">없음</c:if>
								</td>
							</tr>
							<tr>
								<td>상세안내 : ${oneoverview.overview}
								<c:if test = "${oneoverview.overview == ''}">없음</c:if>
								</td>
							</tr>
							
				</table>
				<br>
				
			</div>
		</div>
</body>
</html>