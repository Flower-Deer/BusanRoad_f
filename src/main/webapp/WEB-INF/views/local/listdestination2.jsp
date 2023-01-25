<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
@font-face {
    font-family: 'GmarketSansMedium';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

 .local-btn-group{
	float:left; 
	margin-top: 150px;
	margin-bottom: 0px;
}

.local-object{
	
}
</style>
<title>Insert title here</title>
<script type="text/javascript">
		$(function() {
		
		$('#b11').click(function() {
			var target = $(this);
			$.ajax({
				url : "listdestination2",
				data : {
					category: $('.cate:first').text()
				},
				success : function(list) {
					$('#d1').empty()
					$('#d1').html(list)
					
				}
			}) 
		})//b1 click
		
		$('#b22').click(function() {
			var target = $(this);
			$.ajax({
				url : "listrestaurant2",
				data : {
					category: $('.cate:first').text()
				},
				success : function(list) {
					$('#d1').empty()
					$('#d1').html(list)
					
				}
			}) 
		})//b2 click
		
		$('#b33').click(function() {
			var target = $(this);
			$.ajax({
				url : "listaccommodation2",
				data : {
					category: $('.cate:first').text()
				},
				success : function(list) {
					$('#d1').empty()
					$('#d1').html(list)
					
				}
			}) 
		})//b3 click
		
		
		})
</script>
</head>
<body >
<div class="local-list" style="font-family: 'GmarketSansMedium'; margin-top: 100px;  width: 1400px; float:left;" >
	<!-- 카테고리 분류 버튼 -->
	<div class="local-btn-group" role="group" aria-label="Basic outlined example" style ="float:left; ">
	 				<button type="submit" class="btn btn-outline-dark" id="b11" >관광지</button>
	  				<button type="submit" class="btn btn-outline-dark" id="b22">음식점</button>
	  				<button type="submit" class="btn btn-outline-dark" id="b33">숙박</button>
	</div>
	<!-- 카드 전체-->
	<div style="margin-top: 50px; float:left;">
	 <c:forEach var="vo" items="${list}">
	           <div class="local-object" style="float: left; height: 300px; 
		width: 300px; 	
		margin-right: 30px;
		margin-top: 30px; margin-bottom: 30px;">
	           		<!-- 카드 내용-->
	            		<div class="card h-100">
							<img class="thumbnail" src="../resources/img/${vo.img}" alt="..." />
	      					<div class="text-center" style="margin-top: 5px;">
								<h5 class="fw-bolder">${vo.name}</h5>
								<h7 class="cate">${vo.category}</h7><br>
								<a class="btn btn-outline-dark mt-auto" href="onedestination?name=${vo.name}">상세보기</a>					
	               			</div>
	                    </div>
	           </div>	      
	</c:forEach>
	</div>
</div>
</body>
</html>

