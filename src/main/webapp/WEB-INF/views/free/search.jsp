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

<style>
.card {
	width: 270px;
	height: 300px;
	margin-top: 10px;
}

.card-img-top {
	width: 268px;
	height: 200px;
}
img{
width: 268px;
	height: 200px;
}
.table{
	width:900px;
}
.b2{
	min-width:70px;
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
		<!-- 사이드바 -->
		<div class="row">
			<div class="col-md-3 col-lg-4 ">
				<div class="flex-shrink-0 p-3 bg-white" style="width: 280px;">
					<a href="/"
						class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
						<svg class="bi pe-none me-2" width="30" height="24">
							<use xlink:href="#bootstrap"></use></svg> <span
						class="fs-5 fw-semibold">무장애 여행</span>
					</a>
					<ul class="list-unstyled ps-0">
						<li class="mb-1">
							<button
								class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed"
								data-bs-toggle="collapse" data-bs-target="#home-collapse"
								aria-expanded="true">주제별</button>
							<div class="collapse" id="home-collapse">
								<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
									<li><a href="#"
										class="link-dark d-inline-flex text-decoration-none rounded">노인</a></li>
									<li><a href="#"
										class="link-dark d-inline-flex text-decoration-none rounded">영유아</a></li>
									<li><a href="#"
										class="link-dark d-inline-flex text-decoration-none rounded">장애인</a></li>
								</ul>
							</div>
						</li>

						<li class="border-top my-3"></li>

					</ul>
				</div>
			</div>

					
			<div class="col-md-9 col-lg-8 ">
				<div class="row row-cols-1 row-cols-md-3 g-3"
					style="text-align: center; padding-top: 20px;">
					<div id ="result">
						<table class="table">
							<tr>
								<td>사진</td>
								<td>제목</td>
								<td>번호</td>
								<td>이동</td>
							</tr>
							<c:forEach var="vo" items="${list}">
								<tr>
									<td><img src =${vo.firstimage}></td>
									<td>${vo.title}</td>
									<td>${vo.contentid}</td>
									<td>
										<a href="barrierFreeDetail?contentid=${vo.contentid}">
											<button class="b2" type="button" class="btn btn-primary btn-sm">자세히</button>
										</a>
									</td>
								</tr>
							</c:forEach>
						</table>
					</div>


				</div>
				
			</div>
		</div>
	</div>	
</body>
</html>