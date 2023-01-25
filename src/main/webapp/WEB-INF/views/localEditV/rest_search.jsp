<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<br>
<br>
<h5 style="color: red;"> ⭐ '${vo.name}' 에 대한 정보입니다.</h5>
<table>
	<tr style="height: 100px;">
		<td style="width: 200px; text-align: left;">번호</td>
		<td style="width: 500px; text-align: left;"><input type="text"
			id="num" readonly="readonly" value="${vo.num}"></td>
	</tr>
	<tr style="height: 100px;">
		<td>음식점명</td>
		<td><input type="text" id="name" readonly="readonly"
			value="${vo.name}"></td>
	</tr>
	<tr style="height: 100px;">
		<td>주소</td>
		<td><input type="text" id="address" readonly="readonly"
			value="${vo.address}"></td>
	</tr>
	<tr align="right" style="height: 100px;">
		<td colspan="3"><a class="btn btn-outline-dark mt-auto"
			href="rest_update?name=${vo.name}">수정</a> <a
			class="btn btn-outline-dark mt-auto"
			href="rest_delete?name=${vo.name}">삭제</a> <a
			class="btn btn-outline-dark mt-auto" type="button"
			onclick="location.href='localEdit_rest_s.jsp'">취소</a></td>
	</tr>
</table>
