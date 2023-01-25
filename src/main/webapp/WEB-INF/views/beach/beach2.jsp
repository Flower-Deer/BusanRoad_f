<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%-- <c:forEach var="vo" items="${list}">
		<tr>
			<td style="text-align: center;"><a href="one?name=${vo.name}">${vo.name}</a></td>
			<td>${vo.contents}</td>
			<td>${vo.open}</td>
			<td>${vo.service}</td>
			<td>${vo.subway}</td>
			<td><img src=../resources/img/${vo.img} style="width: 300px; height: 150px;"></td>	
		</tr>
	</c:forEach> --%>
	
	<c:forEach var="vo" items="${list}">
   	<div class="object"  style="float: left; height: 400px; width: 400px; margin-right: 30px; margin-top: 15px; margin-bottom: 15px;">
    	<div class="card h-100">
			<img src=../resources/img/${vo.img} style="width: 400px; height: 270px;">
			<div class="text-center">
				<br>
				<h5 class="fw-bolder">${vo.open}</h5>
				${vo.subway}<br>
				<a class="btn btn-outline-dark mt-auto" href="one?name=${vo.name}">${vo.name}</a>	
			</div>
     	</div>
     </div>
	</c:forEach>
	
	<div class="object"  style="float: left; height: 400px; width: 400px; margin-right: 30px; margin-top: 15px; margin-bottom: 15px;">
    	<div class="card h-100">
			<img src=../resources/img/방문자수.png style="width: 400px; height: 270px;">
			<div class="text-center">
				<br>
				<h5 class="fw-bolder">방문자수 추이 예측 보러가기</h5>
				요즘 해수욕장은 얼마나 사람이 많을까?<br>
				<a class="btn btn-outline-dark mt-auto" href="guest">GO!</a>	
			</div>
     	</div>
     </div>
