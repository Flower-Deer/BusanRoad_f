<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style type="text/css">
 .local-btn-group{
	float:left; 
	margin-top: 150px;
}

.local-object{
	/* float: left;  */
	height: 400px; 
	width: 400px; 
	margin-right: 30px;
	margin-top: 200px; 
	margin-bottom: 30px;
}
</style>
<title>Insert title here</title>
<!-- css -->
<link href="../resources/css/all.css" rel="stylesheet">
</head>
<script type="text/javascript">
		$(function() {
			
		$('#b1').click(function() {
			$.ajax({
				url : "listdestination",
				data : {
					page : 1
				},			
				success : function(list) {
					$('#d1').empty()
					$('#d1').html(list)
					
				}
			}) 
		})//b1 click
		
		$('#b2').click(function() {
			$.ajax({
				url : "listrestaurant",
				data : {
					page : 1
				},
				success : function(list) {
					$('#d1').empty()
					$('#d1').html(list)
					
				}
			}) 
		})//b2 click
		
		$('#b3').click(function() {
			$.ajax({
				url : "listaccommodation",
				data : {
					page : 1
				},
			success : function(list) {
					$('#d1').empty()
					$('#d1').html(list)
					
				}
			}) 
		})//b3 click
		
		$('.b4').click(function() {
			page = $(this).attr('page')
			$.ajax({	
			url : "listrestaurant",
			data : {
				page : page
			},
			success : function(list) {
					$('#d1').empty()
					$('#d1').html(list)
					
				}
			}) 
		})//b4 click 
		
	})
	
</script>
<body>
<div class="local-list" style="font-family: 'GmarketSansMedium'; margin-top: 100px;  width: 1400px; float:left;" >
<!-- 카테고리 분류 버튼 -->
  		<div class="local-btn-group" role="group" aria-label="Basic outlined example">
 				<button type="submit" class="btn btn-outline-dark" id="b1" >관광지</button>
  				<button type="submit" class="btn btn-outline-dark" id="b2">음식점</button>
  				<button type="submit" class="btn btn-outline-dark" id="b3">숙박</button>
		</div>
<!-- 카드 전체-->
<div style="margin-top: 50px; float:left;">
<c:forEach var="vo" items="${list}" >
   	<div class="local-object" style="float: left; height: 300px; 
		width: 300px; 	
		margin-top: 30px; ">
            		<div class="card h-100">
						<img class="thumbnail" src="../resources/img/${vo.img}" alt="..." />
						<div class="text-center" style="margin-top: 5px;">
							<h5 class="fw-bolder">${vo.name}</h5>
							${vo.category}<br>
							<a class="btn btn-outline-dark mt-auto" href="onerestaurant?name=${vo.name}" >상세보기</a>	
						</div>
                    </div>
     </div>
</c:forEach>
</div>

<!-- 페이징 -->	
<%
int pages = (int)request.getAttribute("pages");
for(int p = 1; p <= pages; p++){%>	
<%-- <button  style="width: 50px; margin-top: 500px;" id="b4" onclick="location.href='listdestination?page=<%= p %>'"><%= p %></button>	 --%>
<button  style="width: 50px; margin-top: 100px; float: left; margin-left: 30px;" class="b4 btn btn-light" page="<%= p %>"><%= p %></button>
<%		
}
%>
</div>
</body>
</html>