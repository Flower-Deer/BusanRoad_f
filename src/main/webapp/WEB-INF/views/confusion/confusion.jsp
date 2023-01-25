<%@page import="org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock.Catch"%>
<%@page import="com.sun.org.apache.bcel.internal.Const"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script
	src="https://apis.openapi.sk.com/tmap/jsv2?version=1&appKey=l7xx6afc9e3c4c744922b363451f952ce0d4"></script>
<script type="text/javascript">
	function initTmap(){
		var map = new Tmapv2.Map("map_div",  
		{
			center: new Tmapv2.LatLng(${lat},${lng}),
			width: "300px",
			height: "300px",
			zoom: 15
		});
		 

		var marker = new Tmapv2.Marker({
			position: new Tmapv2.LatLng(${lat},${lng}),
			map: map
		});	
	}
</script>

<!-- css -->
<link href="../resources/css/all.css" rel="stylesheet">
<!-- 폰트 -->
	<link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
	<script src="http://mattstow.com/experiment/responsive-image-maps/jquery.rwdImageMaps.min.js"></script>

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
a{
	margin: 0px;
}
table {
    border: 10px solid #9da0a6;
}
tr {
	border: 2px solid #a5a6a8;
	text-align: center;
	margin: auto;
}
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
/* local 메인 페이지 한정 css */
.side-menu{
font-family: 'GmarketSansMedium';
	width: 280px;
	float:left;
	margin-right:100px;
	margin-left:100px;
	margin-top:200px;
	margin-bottom: 100px;
	padding-left:40px;
	padding-right:40px;
	padding-top:50px;
	border:1px solid black;
	border-radius: 50px;
}
#local-li{
font-size: 18px;
}
#map_div {
	align-self: center;
	margin: auto;
}
</style>
</head>
<body onload="initTmap()">
<!-- 헤더 -->
    <header class="d-flex flex-wrap align-items-center justify-content-md-between border-bottom">
      	<a href="../main/main.jsp">
			<img src=../resources/img/logo2.png class="himg">
		</a>
		
      	<ul class="nav col-12 col-md-auto mb-2 mb-md-0" >
	        <li><a href="../local/local.jsp" class="nav-link px-2 link-dark">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;지역별로 보기</a></li>
	        <li><a href="../beach/beach.jsp" class="nav-link px-2 link-dark">&nbsp;&nbsp;해수욕장</a></li>
	        <li><a href="../barrierFree/barrierFreePage?page=1" class="nav-link px-2 link-dark">&nbsp;&nbsp;무장애 여행</a></li>
	        <li><a href="#" class="nav-link px-2 link-dark">&nbsp;&nbsp;검색</a></li>
	        <li><a href="../confusion/confusion?id=1810011&lat=35.09846683706733&lng=129.03679919242902" class="nav-link px-2 link-dark">&nbsp;&nbsp;혼잡도 알아보기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
     	</ul>
    </header>
    
<!-- 페이지 별 소개 -->
	<div class="intro" style="font-family: 'GmarketSansMedium';">
		<h1 style="font-weight: 700;">혼잡도 알아보기</h1>
		<br>
		<hr>
		<br>
		<h3>부산은 지금 얼마나 많은 사람이 붐빌까?<br> <br>관광철 사람이 많이 모이는 6곳의 '실시간' 혼잡도를 알아보자!</h3>		
	</div> 
	
	<table class="container">
	<br>
		<colgroup>
	    	<col width="15%" />
	    	<col width="15%" />
	    	<col width="15%" />
	    	<col width="15%" />
	    	<col width="15%" />
	    	<col width="15%" />
	    	<col width="15%" />
	    	<col width="15%" />
    	</colgroup>
		<thead>
		<tr>
			<th style="border-right: 2px solid #a5a6a8; font-size: 20px">장소를 선택하세요</th>
	 		<th><a href="confusion?id=1810011&lat=35.09846683706733&lng=129.03679919242902">
	 		<button type="button" class="btn btn-outline-primary" style="font-weight: bold;">롯데 백화점<br>광복점</button>
			</a></th>
			<th><a href="confusion?id=384354&lat=35.15696848197605&lng=129.06326293945347">
			<button type="button" class="btn btn-outline-warning" style="font-weight: bold;">NC 백화점<br>서면점</button>
			</a></th>
			<th><a href="confusion?id=1505596&lat=35.168915000027596&lng=129.12949998378795">
			<button type="button" class="btn btn-outline-primary" style="font-weight: bold;">신세계 백화점<br>센텀시티점</button>
			</a></th>
			<th><a href="confusion?id=11647&lat=35.17321999993558&lng=128.94641003608746">
			<button type="button" class="btn btn-outline-warning" style="font-weight: bold;">김해<br>국제 공항</button>
			</a></th>
			<th><a href="confusion?id=551562&lat=35.164722010697744&lng=128.97780003547712">
			<button type="button" class="btn btn-outline-primary" style="font-weight: bold;">사상<br>르네시떼</button>
			</a></th>
			<th style="padding-right: 15px;"><a href="confusion?id=529636&lat=35.32375001254311&lng=129.23568999910395">
			<button type="button" class="btn btn-outline-warning" style="font-weight: bold;">부산 신세계<br>프리미엄 아울렛 부산점</button>
			</a></th>
		</tr>
		<tbody>
			<tr>
				<td style="border-right: 2px solid #a5a6a8; font-weight: bold; font-size: 20px">실시간 혼잡도<br>&<br>위치</td>
				<td colspan="3" style="border-right: 1px solid black;"><img src="../resources/img/${result}" style="width: 320px; height: 300px; margin-right: 50px;"><br><br>[실시간 혼잡도]</td>
				<td colspan="3"><div id="map_div" style="margin-top: 10px"></div><br>[위치]</td>
			</tr>
			<tr>
				<td style="border-right: 2px solid #a5a6a8; font-weight: bold; font-size: 20px">혼잡도 기준표</td>
				<td colspan="6"><br><img src="../resources/img/level.png"></td>
			</tr> 
		</tbody>
	</table>
	<br>
	
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