<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script type="text/javascript">
$(function() {
	$.ajax({
		url:"beach2.do",
		success: function(x) {
			//html로 받아라
			$('#result').html(x)
		}
	})
})
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
</style>
<!-- 챗봇 -->
<link href="../resources/css/chatbot.css" rel="stylesheet">
</head>
<body>
<!-- 헤더 -->
    <header class="d-flex flex-wrap align-items-center justify-content-md-between border-bottom">
      	<a href="../main/main.jsp">
			<img src=../resources/img/logo2.png class="himg">
		</a>
		
      	<ul class="nav col-12 col-md-auto mb-2 mb-md-0" >
	        <li><a href="../local/local.jsp" class="nav-link px-2 link-dark">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;지역별로 보기</a></li>
	        <li><a href="beach.jsp" class="nav-link px-2 link-dark">&nbsp;&nbsp;해수욕장</a></li>
	        <li><a href="../free/barrierFreepage=1" class="nav-link px-2 link-dark">&nbsp;&nbsp;무장애 여행</a></li>
	        <li><a href="../search/main.jsp" class="nav-link px-2 link-dark">&nbsp;&nbsp;검색</a></li>
	        <li><a href="../confusion/confusion?id=1810011&lat=35.09846683706733&lng=129.03679919242902" class="nav-link px-2 link-dark">&nbsp;&nbsp;혼잡도 알아보기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
     	</ul>
    </header>
    
<!-- 페이지 별 소개 -->
	<div class="intro" style="font-family: 'GmarketSansMedium';">
		<h1 style="font-weight: 700;">부산 해수욕장</h1>
		<br>
		<hr>
		<br>
		<h3>부산하면 바다, 바다하면 부산<br> <br>이번엔 어디 해수욕장을 가볼까?</h3>		
	</div> 
<!-- 챗봇 -->
<div class="chatbot_btn01">
	<div style="position: absolute; inset: 0px; margin: auto;">
		<div class="chatbot_btn04">
			<div class="chatbot_btn03">
            	<div class="chatbot_btn02">
					<a onclick="window.open('http://localhost:8888/www/chatbot/chatbot.jsp', 'window_name', 'width=400, height=1000, location=no, status=no, scrollbars=yes');">
						<img src=../resources/img/chatbot01.png width="48" height="48" style="position: absolute; inset: 0px; margin: auto;">
                    </a>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- 리스트 -->
<!-- <table border="1" class="container">
	<colgroup>
    	<col width="15%" />
        <col width="20%" />
        <col width="15%" />
        <col width="15%" />
        <col width="15%" />
        <col width="20%" />
    </colgroup>
	<thead>
		<tr>
			<th>이름</th>
			<th>상세</th>
			<th>오픈기간</th>
			<th>서비스제공</th>
			<th>거리</th>
			<th>이미지</th>
		</tr>
	</thead>
	<tbody id="result" class="table table-bordered">
		beach2
	</tbody>
</table> -->

<div id="result" class="container"></div>

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
			<a href="../localEdit/chk.jsp" class="admin">관리자</a>
			<p class="admin">&nbsp;: 홍혜림,한희정,이창명,장재일,정유진</p>
		</div>
		<br><br>
	</div>
</body>
</html>