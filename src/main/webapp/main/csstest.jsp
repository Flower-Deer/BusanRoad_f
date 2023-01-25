<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

<meta charset="UTF-8">
<!-- css -->
	<link href="../resources/css/all.css" rel="stylesheet">
<!-- 폰트 -->
	<link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
	
	<link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;700&display=swap" rel="stylesheet">
	
	

<script src="http://mattstow.com/experiment/responsive-image-maps/jquery.rwdImageMaps.min.js"></script>
<style type="text/css">
li {
	margin-left: 5px;
}
a:link { color: red; text-decoration: none;}
a:visited { color: black; text-decoration: none;}
#lir{
	margin-right: 70px;
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
	background-color: #a9a9a9;
	background-position: bottom;
}
#bottom{
	text-align: bottom;
	width: 100vw;
	height: 35vh;
	background: linear-gradient(#D3D3D3 68%, #A9A9A9 32%);
}



</style>


	
<title>Insert title here</title>
</head>


<body>
	
 <body>
<!-- 헤더 -->
    <header class="d-flex flex-wrap align-items-center justify-content-md-between border-bottom">
      	<a href="csstest.jsp">
			<img src=../resources/img/logo2.png class="himg">
		</a>
      	<ul class="nav col-12 col-md-auto mb-2 mb-md-0">
	        <li><a href="#" class="nav-link px-2 link-dark">지역별로 보기</a></li>
	        <li><a href="beach.jsp" class="nav-link px-2 link-dark">해수욕장</a></li>
	        <li><a href="#" class="nav-link px-2 link-dark">무장애 여행</a></li>
	        <li><a href="#" class="nav-link px-2 link-dark">검색</a></li>
	        <li><a href="confusion?id=1810011&lat=35.0984730401583&lng=129.0368000221256" class="nav-link px-2 link-dark" id="lir">혼잡도 알아보기</a></li>
     	</ul>
    </header>
<!-- 페이지 별 소개 -->
	<div class="intro">
		<h1 style="font-weight: 700;">지역 별로 보기</h1>
		<hr>
		<br>
		<h2>부산의 다양한 장소들을 구 별로 소개합니다.<br> <br>원하는 장소를 찾아보세요!</h2>		
	</div>
	
<!-- Bottom -->
	<div id="bottom">
		<div id="bottom" class="container" style="padding-top: 70px;">
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
	</div>
</body>


  
          
</body>
</html>